import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';

class TrackingRepositoryImpl implements TrackingRepository {
  final MyLocationService locationService;

  TrackingRepositoryImpl({
    required this.locationService,
  });

  @override
  void startTracking({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  }) {
    locationService.startTracking(
      id: id,
      etaTimestamp: etaTimestamp,
      comment: comment,
      type: type,
    );
  }

  @override
  void stopTracking({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  }) {
    locationService.stopTracking(
      id: id,
      etaTimestamp: etaTimestamp,
      comment: comment,
      type: type,
    );
  }
}
