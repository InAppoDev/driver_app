import 'package:tms_driver/data/services/foreground_service.dart';
import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final MyLocationService locationService;
  final ForegroundService foregroundService;

  TrackingRepositoryImpl({
    required this.locationService,
    required this.foregroundService,
  });
  @override
  void startTracking() {
    locationService.startTracking();
  }

  @override
  void stopTracking() {
    locationService.stopTracking();
  }
}
