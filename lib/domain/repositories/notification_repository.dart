import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';

abstract class NotificationRepository {
  Future<List<NotificationModel>> getNotifications();
}
