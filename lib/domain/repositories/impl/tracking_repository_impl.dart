import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final MyLocationService locationService;

  TrackingRepositoryImpl({
    required this.locationService,
  });

  @override
  void startTracking(int id) {
    locationService.startTracking(id);
  }

  @override
  void stopTracking(int id) {
    locationService.stopTracking(id);
  }
}
