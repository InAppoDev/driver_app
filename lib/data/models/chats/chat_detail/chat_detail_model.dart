import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/chats/chat_participant/chat_participant.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';
part 'chat_detail_model.freezed.dart';
part 'chat_detail_model.g.dart';

@freezed
class ChatDetailModel with _$ChatDetailModel {
  const factory ChatDetailModel({
    required int id,
    @JsonKey(name: 'subject_type') required String subjectType,
    @JsonKey(name: 'subject_id') required int subjectId,
    required String title,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'action_button_type') String? actionButtonType,
    @JsonKey(name: 'action_button_value') String? actionButtonValue,
    @JsonKey(name: 'first_unread_message_id') int? firstUnreadMessageId,
    required List<ChatParticipant> participants,
    required List<MessageModel> messages,
  }) = _ChatDetailModel;

  factory ChatDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ChatDetailModelFromJson(json);
}
