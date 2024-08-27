part of 'active_trip_bloc.dart';

enum ActiveTripStatus { initial, loading, failure }

@freezed
class ActiveTripState with _$ActiveTripState {
  const factory ActiveTripState({
    required ActiveTripStatus status,
    String? dateTime,
    File? selectedFile,
    String? errorMessage,
    @Default(false) bool isFileLoading,
  }) = _ActiveTripState;

  factory ActiveTripState.initial() => const ActiveTripState(
        status: ActiveTripStatus.initial,
      );
}
