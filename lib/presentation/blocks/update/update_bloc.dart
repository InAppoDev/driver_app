import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/check/check_call/check_call_model.dart';
import 'package:tms_driver/data/models/check/location/location_model.dart';
import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';

part 'update_event.dart';
part 'update_state.dart';
part 'update_bloc.freezed.dart';

class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  final TripRepository tripRepository = GetIt.instance<TripRepository>();
  final MyLocationService locationService = GetIt.instance<MyLocationService>();

  UpdateBloc() : super(UpdateState.initial()) {
    on<SendUpdateEvent>(_onSendUpdate);
  }

  Future<void> _onSendUpdate(
      SendUpdateEvent event, Emitter<UpdateState> emit) async {
    emit(
      state.copyWith(
        status: UpdateStatus.loading,
        etaTimestamp: event.etaTimestamp,
        comment: event.comment,
        tripId: event.tripId,
        type: event.type,
      ),
    );

    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      final CheckCallModel checkCallModel = CheckCallModel(
        location: LocationModel(
          lat: position.latitude,
          lng: position.longitude,
        ),
        type: event.type,
        comment: event.comment,
      );

      await tripRepository.sendCheckCall(
        id: event.tripId,
        checkCall: checkCallModel,
      );

      emit(state.copyWith(status: UpdateStatus.success));
    } catch (e) {
      emit(state.copyWith(status: UpdateStatus.failure));
    }
  }
}
