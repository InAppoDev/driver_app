import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

part 'trip_list_bloc.freezed.dart';
part 'trip_list_event.dart';
part 'trip_list_state.dart';

class TripListBloc extends Bloc<TripListEvent, TripListState> {
  final TripRepository tripRepository = GetIt.instance<TripRepository>();

  TripListBloc() : super(TripListState.initial()) {
    on<_ChangeTabPressed>(_changeTabEvent);
    on<_GetDateAndTime>(_getDataAndTime);

    on<_FetchTrips>(_fetchTrips);
  }

  void _changeTabEvent(_ChangeTabPressed event, Emitter<TripListState> emit) {
    if (event.status == TabStatus.activeTrip) {
      // final trip = event.trip;
      emit(state.copyWith(tabStatus: event.status));
    } else {
      emit(state.copyWith(tabStatus: event.status));
    }
  }

  void _fetchTrips(_FetchTrips event, Emitter<TripListState> emit) async {
    emit(state.copyWith(status: TripStatus.loading));
    try {
      final trips = await tripRepository.getTrips();
      emit(state.copyWith(
        status: TripStatus.initial,
        trips: trips,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TripStatus.initial,
        // errorMessage: e.toString(),
      ));
    }
  }

  void _getDataAndTime(_GetDateAndTime event, Emitter<TripListState> emit) {
    emit(state.copyWith(dateTime: event.dateTime));
  }
}
