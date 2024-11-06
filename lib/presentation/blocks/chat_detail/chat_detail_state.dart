part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailState with _$ChatDetailState {
  const factory ChatDetailState.initial() = Initial;
  const factory ChatDetailState.loading() = Loading;

  const factory ChatDetailState.loaded(ChatDetailModel chatDetails,
      [String? firstUnreadMessageText, File? selectedFile, List<File>? documents]) = Loaded;
  const factory ChatDetailState.sendingMessage() = SendingMessage;
  const factory ChatDetailState.messageSent() = MessageSent;
  const factory ChatDetailState.failure(String errorMessage) = Failure;
}
