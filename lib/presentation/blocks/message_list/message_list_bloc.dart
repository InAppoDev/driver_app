import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';

part 'message_list_bloc.freezed.dart';
part 'message_list_event.dart';
part 'message_list_state.dart';

class MessageListBloc extends Bloc<MessageListEvent, MessageListState> {
  final MessagesRepository messagesRepository =
      GetIt.instance<MessagesRepository>();

  MessageListBloc() : super(MessageListState.initial()) {
    on<_GetChats>((event, emit) async {
      await _getChats(emit);
    });
  }

  Future<void> _getChats(Emitter<MessageListState> emit) async {
    emit(state.copyWith(status: MessageListStatus.loading));
    try {
      final List<ChatModel> chats = await messagesRepository.getChats();
      emit(state.copyWith(status: MessageListStatus.loaded, chatList: chats));
    } catch (e) {
      emit(state.copyWith(
          status: MessageListStatus.failure, errorMessage: e.toString()));
    }
  }
}
