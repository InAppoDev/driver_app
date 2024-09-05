import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';
import 'package:tms_driver/domain/repositories/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final ApiDataSource apiDataSource;

  NotificationRepositoryImpl({
    required this.apiDataSource,
  });

  @override
  Future<List<NotificationModel>> getNotifications() async {
    return await apiDataSource.getNotifications();
  }
}
