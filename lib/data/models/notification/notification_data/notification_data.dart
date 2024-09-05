import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/notification/notification_sender/notification_sender.dart';

part 'notification_data.freezed.dart';
part 'notification_data.g.dart';


@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    int? chatId,
    int? messageId,
    NotificationSender? sender,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}
