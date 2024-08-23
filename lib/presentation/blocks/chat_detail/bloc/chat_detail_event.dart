part of 'chat_detail_bloc.dart';

@freezed
class ChatDetailEvent with _$ChatDetailEvent {
  const factory ChatDetailEvent.sendMessage(String messageContent) =
      _SendMessage;
  const factory ChatDetailEvent.fetchChatDetails(int chatId) =
      _FetchChatDetails;
  const factory ChatDetailEvent.receiveNewMessage(MessageModel newMessage) =
      _ReceiveNewMessage;
}
