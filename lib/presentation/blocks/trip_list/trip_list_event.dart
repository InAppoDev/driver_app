part of 'trip_list_bloc.dart';

@freezed
class TripListEvent with _$TripListEvent {
  const factory TripListEvent.changeTab({
    required TabStatus status,
    DispatchListModel? trip,
  }) = _ChangeTabPressed;

  const factory TripListEvent.getDateAndTime({required String dateTime}) =
      _GetDateAndTime;

  const factory TripListEvent.fetchTrips() = _FetchTrips;
  const factory TripListEvent.fetchHistoryTrips() = _FetchHistoryTrips;

  const factory TripListEvent.navigateToConfirmTripFromPushNotification(
          List<DispatchListModel> trips, int tripId, Function(DispatchListModel) onNavigate) =
      _NavigateToConfirmTripFromPushNotification;
}
