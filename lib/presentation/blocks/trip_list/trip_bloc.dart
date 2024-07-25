import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

part 'trip_bloc.freezed.dart';

part 'trip_event.dart';

part 'trip_state.dart';

class TripBloc extends Bloc<TripEvent, TripState> {
  TripBloc() : super(TripState.initial()) {
    on<TripEvent>(_changeTabEvent);
  }

  void _changeTabEvent(TripEvent event, Emitter<TripState> emit) {
    print('event.status - ${event.status}');
    emit(state.copyWith(tabStatus: event.status));
  }
}
