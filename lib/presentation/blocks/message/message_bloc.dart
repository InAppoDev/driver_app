import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/message/message_model.dart';

part 'message_bloc.freezed.dart';

part 'message_event.dart';

part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageState.initial()) {
    on<MessageEvent>(_sendMessage);
  }

  final List<MessageModel> messageList = [];

  void _sendMessage(MessageEvent event, Emitter<MessageState> emit) {
    emit(state.copyWith(status: MessageStatus.sending));
    messageList.add(MessageModel(
      message: event.message,
      name: 'Kenny West',
      image: 'assets/images/temp_chat_image.jpeg',
      role: 'you',
    ));
    emit(state.copyWith(messageList: messageList));
    emit(state.copyWith(status: MessageStatus.sent));
  }
}
