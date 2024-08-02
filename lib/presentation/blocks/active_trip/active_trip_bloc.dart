import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_trip_bloc.freezed.dart';
part 'active_trip_event.dart';
part 'active_trip_state.dart';

class ActiveTripBloc extends Bloc<ActiveTripEvent, ActiveTripState> {
  ActiveTripBloc() : super(ActiveTripState.initial()) {
    on<GetDateAndTime>(_getDataAndTime);
  }

  void _getDataAndTime(event, Emitter<ActiveTripState> emit) {
    emit(state.copyWith(dateTime: event.dateTime));
  }
}
