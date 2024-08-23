part of 'message_list_bloc.dart';

enum MessageListStatus {
  initial,
  loading,
  loaded,
  failure,
}

@freezed
class MessageListState with _$MessageListState {
  const factory MessageListState({
    required MessageListStatus status,
    @Default([]) List<ChatModel> chatList,
    String? errorMessage,
  }) = _MessageListState;

  factory MessageListState.initial() =>
      const MessageListState(status: MessageListStatus.initial);
}
