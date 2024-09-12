part of 'trip_detail_bloc.dart';

enum ActiveTripStatus { initial, loading, failure }

@freezed
class TripDetailState with _$TripDetailState {
  const factory TripDetailState({
    required ActiveTripStatus status,
    String? dateTime,
    File? selectedFile,
    String? errorMessage,
    @Default(false) bool isFileLoading,
  }) = _TripDetailState;

  factory TripDetailState.initial() => const TripDetailState(
        status: ActiveTripStatus.initial,
      );
}
