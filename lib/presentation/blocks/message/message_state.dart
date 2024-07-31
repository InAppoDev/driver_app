part of 'message_bloc.dart';

enum MessageStatus {
  initial,
  loading,
  sending,
  failure,
  sent,
}

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required MessageStatus status,
    @Default([]) List<MessageModel> messageList,
    @Default('') message,
    String? errorMessage,
  }) = _MessageState;

  factory MessageState.initial() =>
      const MessageState(status: MessageStatus.initial);
}
