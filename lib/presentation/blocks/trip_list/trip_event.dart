
part of 'trip_bloc.dart';

@freezed
class TripEvent with _$TripEvent {
  const factory TripEvent.changeTab(
      {required TabStatus status, TripModel? trip}) = _ChangeTabPressed;
}
