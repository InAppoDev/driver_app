import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/trip/trip_details_model.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

part 'trip_bloc.freezed.dart';
part 'trip_event.dart';
part 'trip_state.dart';

class TripBloc extends Bloc<TripEvent, TripState> {
  TripBloc() : super(TripState.initial()) {
    on<TripEvent>(_changeTabEvent);
  }

  final List<TripModel> trips = [
    const TripModel(miles: 300, details: [
      TripDetailsModel(
        name: 'Pick UP #1',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Pick UP #2',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Pick UP #3',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Delivery #1',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Delivery #2',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
    ]),
    const TripModel(miles: 300, details: [
      TripDetailsModel(
        name: 'Pick UP #1',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Pick UP #2',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Pick UP #3',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Delivery #1',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Delivery #2',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
    ]),
    const TripModel(miles: 300, details: [
      TripDetailsModel(
        name: 'Pick UP #1',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Pick UP #2',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Pick UP #3',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Delivery #1',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
      TripDetailsModel(
        name: 'Delivery #2',
        address: 'Viena, Österreich, 37240 , Ch',
        data: '08/11/23 10:00 AM',
      ),
    ]),
  ];

  void _changeTabEvent(TripEvent event, Emitter<TripState> emit) {
    emit(state.copyWith(tabStatus: event.status));
  }
}
