import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/chats/chat_document/chat_document.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required int id,
    required ChatParticipant sender,
    required String content,
    List<ChatDocument>? documents,
    @JsonKey(name: 'sent_at') required int sentAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
