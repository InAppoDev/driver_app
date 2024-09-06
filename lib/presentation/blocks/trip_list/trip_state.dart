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
    TripModel? trip,
    String? dateTime,
    File? selectedFile,
    @Default(false) bool isFileLoading,
  }) = _TripState;

  factory TripState.initial() => const TripState(
        status: TripStatus.initial,
        tabStatus: TabStatus.newTrips,
      );
}
