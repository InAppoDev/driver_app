part of 'trip_list_bloc.dart';

enum TripStatus {
  initial,
  loading,
}

@freezed
class TripListState with _$TripListState {
  const factory TripListState({
    required TripStatus status,
    @Default(TabStatus.newTrips) TabStatus tabStatus,
    String? dateTime,
    @Default([]) List<DispatchListModel> trips,
    @Default([]) List<DispatchListModel> historyTrips,
  }) = _TripState;

  factory TripListState.initial() => const TripListState(
        status: TripStatus.initial,
        tabStatus: TabStatus.newTrips,
      );
}
