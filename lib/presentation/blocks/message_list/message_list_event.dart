part of 'message_list_bloc.dart';

@freezed
class MessageListEvent with _$MessageListEvent {
  const factory MessageListEvent.getChats() = _GetChats;
}
