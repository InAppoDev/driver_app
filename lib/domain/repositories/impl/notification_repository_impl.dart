import 'dart:async';

import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';
import 'package:tms_driver/data/services/hive_service.dart';
import 'package:tms_driver/domain/repositories/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final ApiDataSource apiDataSource;
  final HiveService hiveService;
  final StreamController<List<NotificationModel>>
      _notificationStreamController = StreamController.broadcast();

  NotificationRepositoryImpl({
    required this.apiDataSource,
    required this.hiveService,
  });

  Stream<List<NotificationModel>> get notificationStream =>
      _notificationStreamController.stream;

  @override
  Future<List<NotificationModel>> getNotifications() async {
    try {
      print('call getNotifications repo');

      List<NotificationModel> newNotifications =
          await apiDataSource.getNotifications();
      print('New notifications received: ${newNotifications.length}');

      List<NotificationModel> currentNotifications =
          hiveService.getNotifications();

      bool hasNewNotifications =
          _hasNewNotifications(newNotifications, currentNotifications);

      if (hasNewNotifications) {
        List<NotificationModel> updatedNotifications = [
          ...currentNotifications,
          ...newNotifications
        ];

        await hiveService.saveNotifications(updatedNotifications);

        _notificationStreamController.add(updatedNotifications);
      }
      return newNotifications;
    } on Exception catch (e, stacktrace) {
      print('Error: $e');
      print('Stacktrace: $stacktrace');
      throw Exception('An unexpected error occurred. Please try again.');
    }
  }

  bool _hasNewNotifications(List<NotificationModel> newNotifications,
      List<NotificationModel> currentNotifications) {
    final existingIds = currentNotifications.map((n) => n.id).toSet();
    for (final notification in newNotifications) {
      if (!existingIds.contains(notification.id)) {
        return true;
      }
    }
    return false;
  }

  void dispose() {
    _notificationStreamController.close();
  }
}
