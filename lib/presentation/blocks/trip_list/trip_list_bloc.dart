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
    on<_FetchHistoryTrips>(_fetchHistoryTrips);
  }

  void _changeTabEvent(_ChangeTabPressed event, Emitter<TripListState> emit) {
    emit(state.copyWith(tabStatus: event.status));
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
      ));
    }
  }

  void _fetchHistoryTrips(
      _FetchHistoryTrips event, Emitter<TripListState> emit) async {
    emit(state.copyWith(status: TripStatus.loading));
    try {
      final List<DispatchListModel> historyTrips =
          await tripRepository.getHistoryTrips();
      emit(state.copyWith(
        status: TripStatus.initial,
        historyTrips: historyTrips,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: TripStatus.initial,
      ));
    }
  }

  void _getDataAndTime(_GetDateAndTime event, Emitter<TripListState> emit) {
    emit(state.copyWith(dateTime: event.dateTime));
  }
}
