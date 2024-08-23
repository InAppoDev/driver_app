import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';

part 'chat_detail_model.freezed.dart';
part 'chat_detail_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class ChatDetailModel with _$ChatDetailModel {
  const factory ChatDetailModel({
    required int id,
    required String subjectType,
    required int subjectId,
    required String title,
    String? photoUrl,
    String? actionButtonType,
    String? actionButtonValue,
    String? firstUnreadMessageId,
    required List<ChatParticipant> participants,
    required List<MessageModel> messages,
  }) = _ChatDetailModel;

  factory ChatDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ChatDetailModelFromJson(json);
}

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required int id,
    required ChatParticipant sender,
    required String content,
    List<ChatDocument>? documents,
    required int sentAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

@freezed
class ChatDocument with _$ChatDocument {
  const factory ChatDocument({
    required int id,
    required String name,
    String? originalFilename,
    int? sizeInBytes,
    String? ext,
    String? thumbnailUrl,
    String? downloadUrl,
  }) = _ChatDocument;

  factory ChatDocument.fromJson(Map<String, dynamic> json) =>
      _$ChatDocumentFromJson(json);
}
