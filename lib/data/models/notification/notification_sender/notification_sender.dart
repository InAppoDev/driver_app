import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_sender.freezed.dart';
part 'notification_sender.g.dart';

@freezed
class NotificationSender with _$NotificationSender {
  const factory NotificationSender({
    int? senderId,
    String? senderType,
    String? name,
    String? avatarUrl,
  }) = _NotificationSender;

  factory NotificationSender.fromJson(Map<String, dynamic> json) =>
      _$NotificationSenderFromJson(json);
}