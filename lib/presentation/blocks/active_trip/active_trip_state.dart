part of 'active_trip_bloc.dart';

enum ActiveTripStatus {
  initial,
  loading,
}

@freezed
class ActiveTripState with _$ActiveTripState {
  const factory ActiveTripState({
    required ActiveTripStatus status,
    String? dateTime,
   @Default([]) List<File> selectedFiles,
    String? errorMessage,
  }) = _ActiveTripState;

  factory ActiveTripState.initial() => const ActiveTripState(
    status: ActiveTripStatus.initial,
  );
}
