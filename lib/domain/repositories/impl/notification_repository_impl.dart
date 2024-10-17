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

  @override
  Stream<List<NotificationModel>> get notificationStream =>
      _notificationStreamController.stream;

  @override
  Future<List<NotificationModel>> getNotifications({DateTime? after}) async {
    try {
      print('call getNotifications repo');

      List<NotificationModel> newNotifications =
          await apiDataSource.getNotifications(after: after);

      List<NotificationModel> currentNotifications =
          hiveService.getNotifications();

      List<NotificationModel> uniqueNotifications =
          _getUniqueNotifications(newNotifications, currentNotifications);

      if (uniqueNotifications.isNotEmpty) {
        List<NotificationModel> updatedNotifications = [
          ...currentNotifications,
          ...uniqueNotifications
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

  List<NotificationModel> _getUniqueNotifications(
      List<NotificationModel> newNotifications,
      List<NotificationModel> currentNotifications) {
    final currentIds = currentNotifications.map((n) => n.id).toSet();

    return newNotifications
        .where((newNotification) => !currentIds.contains(newNotification.id))
        .toList();
  }

  void dispose() {
    _notificationStreamController.close();
  }
}
