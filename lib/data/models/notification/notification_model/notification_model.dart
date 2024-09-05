// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/notification/notification_data/notification_data.dart';

part 'notification_model.freezed.dart';

part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    int? id,
    String? type,
    String? title,
    String? description,
    int? eventAt,
    String? entityType,
    int? entityId,
    NotificationData? data,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
