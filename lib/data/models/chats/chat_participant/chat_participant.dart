// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_participant.freezed.dart';
part 'chat_participant.g.dart';

@freezed
class ChatParticipant with _$ChatParticipant {
  const factory ChatParticipant({
    @JsonKey(name: 'sender_id') required int senderId,
    @JsonKey(name: 'sender_type') required String senderType,
    required String name,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _ChatParticipant;

  factory ChatParticipant.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantFromJson(json);
}
