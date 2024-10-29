part of 'trip_detail_bloc.dart';

enum ActiveTripStatus { initial, loading, failure, success }

@freezed
class TripDetailState with _$TripDetailState {
  const factory TripDetailState({
    required ActiveTripStatus status,
    String? dateTime,
    File? selectedFile,
    String? errorMessage,
    @Default(false) bool isFileLoading,
    @Default(false) bool isLoading,
    DispatchModel? trip,
    @Default(true) bool areStopsVisible,
    @Default(false) bool isConfirmingTrip,
    bool? isConfirmTripSuccesses,
    @Default([]) List<String> documents,
    @Default(false) bool isCheckCallLoading
  }) = _TripDetailState;

  factory TripDetailState.initial() => const TripDetailState(
        status: ActiveTripStatus.initial,
        isLoading: false,
      );
}
