abstract class TrackingRepository {
  void startTracking({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  });

  void stopTracking({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  });
}
