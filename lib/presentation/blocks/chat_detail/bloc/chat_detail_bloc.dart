import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';

part 'chat_detail_bloc.freezed.dart';
part 'chat_detail_event.dart';
part 'chat_detail_state.dart';

class ChatDetailBloc extends Bloc<ChatDetailEvent, ChatDetailState> {
  final MessagesRepository messagesRepository =
      GetIt.instance<MessagesRepository>();
  final int chatId;

  ChatDetailBloc({required this.chatId})
      : super(const ChatDetailState.initial()) {
    on<ChatDetailEvent>((event, emit) async {
      await event.map(
        sendMessage: (e) async => _sendMessage(e, emit),
        fetchChatDetails: (e) async => _fetchChatDetails(e, emit),
        receiveNewMessage: (e) async => _receiveNewMessage(e, emit),
      );
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

  Future<void> _sendMessage(
      _SendMessage event, Emitter<ChatDetailState> emit) async {
    try {
      await messagesRepository.sendMessage(chatId, event.messageContent);
      emit(ChatDetailState.loaded(event.chatDetails));
      add(ChatDetailEvent.fetchChatDetails(chatId));
    } catch (e) {
      emit(ChatDetailState.failure(e.toString()));
    }
  }

  Future<void> _receiveNewMessage(
      _ReceiveNewMessage event, Emitter<ChatDetailState> emit) async {
    state.maybeWhen(
      loaded: (chatDetails) {
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
