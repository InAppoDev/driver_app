part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState.initial() = _Initial;
  const factory ChatDetailState.loading() = _Loading;
  const factory ChatDetailState.loaded(ChatDetailModel chatDetails) = _Loaded;
  const factory ChatDetailState.sendingMessage() = _SendingMessage;
  const factory ChatDetailState.messageSent() = _MessageSent;
  const factory ChatDetailState.failure(String errorMessage) = _Failure;
}
