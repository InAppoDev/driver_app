part of 'trip_bloc.dart';

enum TripStatus {
  initial,
  loading,
}

@freezed
class TripState with _$TripState {
  const factory TripState({
    required TripStatus status,
    @Default(TabStatus.newTrips) TabStatus tabStatus,
    String? errorMessage,
  }) = _TripState;

  factory TripState.initial() => const TripState(
        status: TripStatus.initial,
        tabStatus: TabStatus.newTrips,
      );
}
