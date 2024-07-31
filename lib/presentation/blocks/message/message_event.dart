
part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.sendMessage({required String message}) =
  _MessageEvent;

}
