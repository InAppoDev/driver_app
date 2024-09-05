import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_sender.freezed.dart';
part 'notification_sender.g.dart';

@freezed
class NotificationSender with _$NotificationSender {
  const factory NotificationSender({
    @JsonKey(name: 'sender_id') int? senderId,
    @JsonKey(name: 'sender_type') String? senderType,
    String? name,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _NotificationSender;

  factory NotificationSender.fromJson(Map<String, dynamic> json) =>
      _$NotificationSenderFromJson(json);
}