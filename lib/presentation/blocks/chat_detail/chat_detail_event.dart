part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  const factory ChatDetailEvent.sendMessage(
      String messageContent, ChatDetailModel chatDetails) = SendMessage;
  const factory ChatDetailEvent.fetchChatDetails(int chatId) = FetchChatDetails;
  const factory ChatDetailEvent.receiveNewMessage(MessageModel newMessage) =
      ReceiveNewMessage;
  const factory ChatDetailEvent.downloadFile(String url, String fileName) =
      DownloadFile;
  const factory ChatDetailEvent.tapToCall(String number) = TapToCall;

  const factory ChatDetailEvent.pickFile(BuildContext context) = PickFile;
  const factory ChatDetailEvent.addDocument(BuildContext context) = AddDocument;

  const factory ChatDetailEvent.makeNullSelectedFile() = MakeNullSelectedFile;

  const factory ChatDetailEvent.scanDoc(String image, BuildContext context) = ScanDoc;
  const factory ChatDetailEvent.removeDocument(File file) = RemoveDocument;
}
