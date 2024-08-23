import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';

part 'chat_detail_event.dart';
part 'chat_detail_state.dart';
part 'chat_detail_bloc.freezed.dart';

class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  final MessagesRepository messagesRepository =
      GetIt.instance<MessagesRepository>();
  final int chatId;

  ChatDetailBloc({required this.chatId})
      : super(const ChatDetailState.initial()) {
    on<ChatDetailEvent>((event, emit) async {
      await event.map(
        started: (e) async => {},
        sendMessage: (e) async => _sendMessage(e, emit),
        fetchChatDetails: (e) async => _fetchChatDetails(e, emit),
        receiveNewMessage: (e) async => _receiveNewMessage(e, emit),
      );
    });
  }

  Future<void> _fetchChatDetails(
      _FetchChatDetails event, Emitter<ChatDetailState> emit) async {
    emit(const ChatDetailState.loading());
    try {
      final chatDetails = await messagesRepository.getChatDetails(event.chatId);
      emit(ChatDetailState.loaded(chatDetails));
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _sendMessage(
      _SendMessage event, Emitter<ChatDetailState> emit) async {
    emit(const ChatDetailState.sendingMessage());
    try {
      await messagesRepository.sendMessage(chatId, event.messageContent);
      emit(const ChatDetailState.messageSent());
      add(ChatDetailEvent.fetchChatDetails(chatId));
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _receiveNewMessage(
      _ReceiveNewMessage event, Emitter<ChatDetailState> emit) async {
    if (state is _Loaded) {
      final currentState = state as _Loaded;
      final updatedMessages =
          List<MessageModel>.from(currentState.chatDetails.messages)
            ..add(event.newMessage);
      final updatedChatDetails =
          currentState.chatDetails.copyWith(messages: updatedMessages);
      emit(ChatDetailState.loaded(updatedChatDetails));
    }
  }
}
