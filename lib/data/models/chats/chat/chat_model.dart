// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';
import 'package:tms_driver/data/models/chats/last_message/last_message_model.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    required int id,
    required String title,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'last_message') LastMessageModel? lastMessage,
    @JsonKey(name: 'unread_messages_count') int? unreadMessagesCount,
    @JsonKey(name: 'order_weight') int? orderWeight,
    @JsonKey(name: 'last_updated_at') int? lastUpdatedAt,
    required List<ChatParticipant> participants,
  }) = _ChatModel;

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}
