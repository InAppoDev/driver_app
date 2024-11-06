import 'dart:async';
import 'dart:io';

import 'package:downloadsfolder/downloadsfolder.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';
import 'package:tms_driver/domain/repositories/notification_repository.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';
import 'package:tms_driver/presentation/consts/consts.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'chat_detail_bloc.freezed.dart';
part 'chat_detail_event.dart';
part 'chat_detail_state.dart';

class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  final MessagesRepository messagesRepository =
      GetIt.instance<MessagesRepository>();
  final TripRepository tripRepository = GetIt.instance<TripRepository>();
  final NotificationRepository notificationRepo =
      GetIt.instance<NotificationRepository>();
  Timer? _timer;
  final int chatId;

  ChatDetailBloc({required this.chatId})
      : super(const ChatDetailState.initial()) {
    on<SendMessage>(_sendMessage);
    on<FetchChatDetails>(_fetchChatDetails);
    on<ReceiveNewMessage>(_receiveNewMessage);
    on<DownloadFile>(_downloadFile);
    on<TapToCall>(_tapToCall);
    on<PickFile>(_pickFile);
    on<RemoveDocument>(_removeDocument);
    on<AddDocument>(_addToDocumentList);
    on<MakeNullSelectedFile>(_makeNullSelectedFile);
    on<ScanDoc>(_scanDoc);
    on<CancelTimer>(_cancelTimer);
    on<StartPeriodicTimer>(_startPeriodicTimer);
  }

  Future<void> _fetchChatDetails(FetchChatDetails event,
      Emitter<ChatDetailState> emit,) async {
    emit(const ChatDetailState.loading());

    try {
      String? unreadMessage;
      final chatDetails = await messagesRepository.getChatDetails(event.chatId);

      if (chatDetails.firstUnreadMessageId != null) {
        unreadMessage = await messagesRepository.checkUnreadMessage(
          event.chatId.toString(),
          chatDetails.firstUnreadMessageId!,
        );
      }
      emit(ChatDetailState.loaded(chatDetails, unreadMessage));

      _timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
        add(ChatDetailEvent.startPeriodicTimer(event.chatId));
      });
      emit(ChatDetailState.loaded(chatDetails, unreadMessage));
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _startPeriodicTimer(
      StartPeriodicTimer event, Emitter<ChatDetailState> emit) async {
    final chatDetails = await messagesRepository.getChatDetails(event.chatId);
    String? unreadMessage;
    if (chatDetails.firstUnreadMessageId != null) {
      unreadMessage = await messagesRepository.checkUnreadMessage(
        event.chatId.toString(),
        chatDetails.firstUnreadMessageId!,
      );
    }

    state.maybeWhen(
      loaded: (stateChatDetails, _, __, ___) async {
        bool areEqual = stateChatDetails.messages.length ==
                chatDetails.messages.length &&
            stateChatDetails.messages.every((item) =>
                chatDetails.messages[stateChatDetails.messages.indexOf(item)] ==
                item);

        if (!areEqual) {
          emit(ChatDetailState.loaded(chatDetails, unreadMessage));
        }
      },
      orElse: () async {},
    );
  }

  void _cancelTimer(CancelTimer event, Emitter<ChatDetailState> emit) {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _downloadFile(
      DownloadFile event, Emitter<ChatDetailState> emit) async {
    try {
      final downloadDirectory = await getDownloadDirectory();
      await FlutterDownloader.enqueue(
        url: event.url,
        savedDir: downloadDirectory.path,
        fileName: event.fileName,
        showNotification: true,
        openFileFromNotification: true,
      );
    } catch (e) {
      print("Error downloading file: $e");
    }
  }

  Future<void> _tapToCall(
      TapToCall event, Emitter<ChatDetailState> emit) async {
    try {
      launchUrlString("tel://${event.number}");
    } catch (e) {
      print("Error _tapToCall: $e");
    }
  }

  Future<void> _sendMessage(
      SendMessage event, Emitter<ChatDetailState> emit) async {
    try {
      await state.maybeWhen(
        loaded: (
          chatDetails,
          unreadMessage,
          selectedFile,
          docs,
        ) async {
          final List<MessageModel> messages = [];
          final List<String> documentIds = [];

          if (event.messageContent.isNotEmpty ||
              (docs != null && docs.isNotEmpty)) {
            final newMessage = MessageModel(
              id: chatDetails.messages.isEmpty
                  ? 0
                  : chatDetails.messages.first.id + 1,
              sender: chatDetails.participants.first,
              content: event.messageContent,
              sentAt: DateTime.now().millisecondsSinceEpoch,
              status: MessageStatus.sending,
            );

            messages.addAll(chatDetails.messages);
            messages.add(newMessage);

            final updatedChatDetails = chatDetails.copyWith(messages: messages);
            emit(ChatDetailState.loaded(updatedChatDetails));

            for (final file in docs ?? []) {
              final resultDoc =
                  await tripRepository.uploadDocument(file, subFile(file));
              if (resultDoc.success) {
                documentIds.add(resultDoc.uploadId);
              } else {
                final failedMessage =
                    newMessage.copyWith(status: MessageStatus.failed);
                messages[messages.length - 1] = failedMessage;
                emit(ChatDetailState.loaded(updatedChatDetails));
                return;
              }
            }

            await messagesRepository.sendMessage(
                chatId, event.messageContent, documentIds);

            final sentMessage = newMessage.copyWith(status: MessageStatus.sent);
            messages[messages.length - 1] = sentMessage;
            emit(ChatDetailState.loaded(updatedChatDetails));

            add(ChatDetailEvent.fetchChatDetails(chatId));
          } else {
            emit(
                const ChatDetailState.failure('Cannot send an empty message.'));
          }
        },
        orElse: () async {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _pickFile(PickFile event, Emitter<ChatDetailState> emit) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png', 'jpeg'],
      );
      if (result == null) return;
      final file = File(result.files.single.path!);
      state.maybeWhen(
        loaded: (
          chatDetails,
          unreadMessage,
          selectedFile,
          docs,
        ) {
          emit(ChatDetailState.loaded(chatDetails, unreadMessage, file, docs));
          add(ChatDetailEvent.addDocument(event.context));
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  void _scanDoc(ScanDoc event, Emitter<ChatDetailState> emit) async {
    try {
      state.maybeWhen(
        loaded: (chatDetails, unreadMessage, selectedFile, docs) {
          emit(ChatDetailState.loaded(
              chatDetails, unreadMessage, File(event.image), docs));
          add(ChatDetailEvent.addDocument(event.context));
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _addToDocumentList(
      AddDocument event, Emitter<ChatDetailState> emit) async {
    try {
      state.maybeWhen(
        loaded: (chatDetails, unreadMessage, selectedFile, docs) {
          final List<File> documents = [];
          documents.clear();
          documents.addAll(docs ?? []);
          if (selectedFile != null) {
            documents.add(selectedFile);
          }
          emit(ChatDetailState.loaded(
              chatDetails, unreadMessage, selectedFile, documents));
          event.context.pop();
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _makeNullSelectedFile(
      MakeNullSelectedFile event, Emitter<ChatDetailState> emit) async {
    try {
      state.maybeWhen(
        loaded: (chatDetails, unreadMessage, selectedFile, docs) {
          emit(ChatDetailState.loaded(chatDetails, unreadMessage, null, docs));
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _removeDocument(
      RemoveDocument event, Emitter<ChatDetailState> emit) async {
    try {
      state.maybeWhen(
        loaded: (chatDetails, unreadMessage, selectedFile, docs) {
          final List<File> documents = [];
          documents.clear();
          documents.addAll(docs ?? []);
          documents.removeWhere((file) => file == event.file);

          emit(ChatDetailState.loaded(
              chatDetails, unreadMessage, selectedFile, documents));
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _receiveNewMessage(
      ReceiveNewMessage event, Emitter<ChatDetailState> emit) async {
    state.maybeWhen(
      loaded: (chatDetails, unreadMessage, selectedFile, docs) {
        final updatedMessages = List<MessageModel>.from(chatDetails.messages)
          ..add(event.newMessage);

        final updatedChatDetails =
            chatDetails.copyWith(messages: updatedMessages);

        emit(ChatDetailState.loaded(updatedChatDetails));
      },
      orElse: () {},
    );
  }
}
