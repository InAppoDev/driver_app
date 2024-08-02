
part of 'active_trip_bloc.dart';

@freezed
class ActiveTripEvent with _$ActiveTripEvent {
  const factory ActiveTripEvent.initialize() = Initialize;

  const factory ActiveTripEvent.getDateAndTime({required String dateTime}) =
      GetDateAndTime;
}
