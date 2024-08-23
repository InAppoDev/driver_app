import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class ChatModel with _$ChatModel {
  const factory ChatModel({
    required int id,
    required String title,
    String? photoUrl,
    LastMessageModel? lastMessage,
    int? unreadMessagesCount,
    int? orderWeight,
    int? lastUpdatedAt,
    required List<ChatParticipant> participants,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}

@freezed
class LastMessageModel with _$LastMessageModel {
  const factory LastMessageModel({
    required String previewText,
  }) = _LastMessageModel;

  factory LastMessageModel.fromJson(Map<String, dynamic> json) =>
      _$LastMessageModelFromJson(json);
}

@freezed
class ChatParticipant with _$ChatParticipant {
  const factory ChatParticipant({
    required int senderId,
    required String senderType,
    required String name,
    String? avatarUrl,
  }) = _ChatParticipant;

  factory ChatParticipant.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantFromJson(json);
}
