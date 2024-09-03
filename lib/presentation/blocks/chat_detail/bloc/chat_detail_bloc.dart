import 'dart:io';

import 'package:downloadsfolder/downloadsfolder.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';
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
  final int chatId;

  ChatDetailBloc({required this.chatId})
      : super(const ChatDetailState.initial()) {
    on<ChatDetailEvent>((event, emit) async {
      await event.map(
        sendMessage: (e) async => _sendMessage(e, emit),
        fetchChatDetails: (e) async => _fetchChatDetails(e, emit),
        receiveNewMessage: (e) async => _receiveNewMessage(e, emit),
        downloadFile: (e) async => _downLoadFile(e, emit),
        tapToCall: (e) async => _tapToCall(e, emit),
          addDocument: (e) async => _addDocument(e, emit),
          removeDocument: (e) async => _removeDocument(e, emit));
    });
  }

  Future<void> _fetchChatDetails(
      _FetchChatDetails event, Emitter<ChatDetailState> emit) async {
    try {
      final chatDetails = await messagesRepository.getChatDetails(event.chatId);
      emit(ChatDetailState.loaded(chatDetails));
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _downLoadFile(
      _DownloadFile event, Emitter<ChatDetailState> emit) async {
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
      _TapToCall event, Emitter<ChatDetailState> emit) async {
    try {
      launchUrlString("tel://21213123123");
    } catch (e) {
      print("Error _tapToCall: $e");
    }
  }

  Future<void> _sendMessage(
      _SendMessage event, Emitter<ChatDetailState> emit) async {
    try {
      state.maybeWhen(
        loaded: (chatDetails, docs) async {
          final List<MessageModel> messages = [];
          final List<String> documents = [];
          for (final file in docs ?? []) {
            final resultDoc =
                await tripRepository.uploadDocument(file, subFile(file));
            if (resultDoc.success) {
              documents.add(resultDoc.uploadId);
            }
          }

          messages.addAll(event.chatDetails.messages);
          messages.add(MessageModel(
            id: messages.first.id,
            sender: messages.first.sender,
            content: event.messageContent,
            sentAt: DateTime.now().millisecondsSinceEpoch,
          ));
          final chatDetails = event.chatDetails.copyWith(messages: messages);
          await messagesRepository.sendMessage(
              chatId, event.messageContent, documents);

          emit(ChatDetailState.loaded(chatDetails));
          add(ChatDetailEvent.fetchChatDetails(chatId));
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _addDocument(
      _AddDocument event, Emitter<ChatDetailState> emit) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png', 'jpeg'],
      );
      if (result == null) return;
      final file = File(result.files.single.path!);

      state.maybeWhen(
        loaded: (chatDetails, docs) {
          final List<File> documents = [];
          documents.clear();
          documents.addAll(docs ?? []);
          documents.add(file);

          emit(ChatDetailState.loaded(chatDetails, documents));
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _removeDocument(
      _RemoveDocument event, Emitter<ChatDetailState> emit) async {
    try {
      state.maybeWhen(
        loaded: (chatDetails, docs) {
          final List<File> documents = [];
          documents.clear();
          documents.addAll(docs ?? []);
          documents.removeWhere((file) => file == event.file);

          emit(ChatDetailState.loaded(chatDetails, documents));
        },
        orElse: () {},
      );
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _receiveNewMessage(
      _ReceiveNewMessage event, Emitter<ChatDetailState> emit) async {
    state.maybeWhen(
      loaded: (chatDetails, docs) {
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
