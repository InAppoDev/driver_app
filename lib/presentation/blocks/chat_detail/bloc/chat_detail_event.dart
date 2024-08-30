part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  const factory ChatDetailEvent.sendMessage(
      String messageContent, ChatDetailModel chatDetails) = _SendMessage;
  const factory ChatDetailEvent.fetchChatDetails(int chatId) =
      _FetchChatDetails;
  const factory ChatDetailEvent.receiveNewMessage(MessageModel newMessage) =
      _ReceiveNewMessage;
  const factory ChatDetailEvent.downloadFile(String url, String fileName) =
      _DownloadFile;
  const factory ChatDetailEvent.tapToCall(String number) =
  _TapToCall;

  const factory ChatDetailEvent.addDocument(ChatDetailModel chatDetails) =
      _AddDocument;

  const factory ChatDetailEvent.removeDocument(
      ChatDetailModel chatDetails, File file) = _RemoveDocument;
}
