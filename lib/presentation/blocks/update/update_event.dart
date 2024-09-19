part of 'update_bloc.dart';

@freezed
class UpdateEvent with _$UpdateEvent {
  const factory UpdateEvent.initialize() = Initialize;

  const factory UpdateEvent.sendUpdate({
    int? etaTimestamp,
    String? comment,
    required int tripId,
    required String type,
  }) = SendUpdateEvent;
}
