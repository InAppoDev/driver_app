import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final MyLocationService _locationService;

  TrackingRepositoryImpl(this._locationService);
  @override
  void startTracking() {
    _locationService.startTracking();
  }

  @override
  void stopTracking() {
    _locationService.stopTracking();
  }
}
