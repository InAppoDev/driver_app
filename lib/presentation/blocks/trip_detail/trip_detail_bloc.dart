import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/trip/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';

part 'trip_detail_bloc.freezed.dart';
part 'trip_detail_event.dart';
part 'trip_detail_state.dart';

class TripDetailBloc extends Bloc<TripDetailEvent, TripDetailState> {
  final TripRepository tripRepository = GetIt.instance<TripRepository>();

  TripDetailBloc() : super(TripDetailState.initial()) {
    on<GetDateAndTime>(_getDataAndTime);
    on<PickFile>(_pickFile);
    on<RemoveFile>(_removeFile);
    on<ScanDoc>(_scanDoc);
    on<UploadFiles>(_uploadFiles);
    on<FetchTripDetail>(_fetchTripDetail);
    on<ToggleStopsVisibility>(_toggleStopsVisibility);
    on<LoadActiveTrip>(_loadActiveTrip);
  }

  void _fetchTripDetail(
      FetchTripDetail event, Emitter<TripDetailState> emit) async {
    emit(state.copyWith(status: ActiveTripStatus.loading));
    try {
      final DispatchModel trip = await tripRepository.getTripById(event.tripId);
      emit(state.copyWith(
        status: ActiveTripStatus.success,
        trip: trip,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: ActiveTripStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  void _loadActiveTrip(
      LoadActiveTrip event, Emitter<TripDetailState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final DispatchModel? trip = await tripRepository.getActiveTrip();
      if (trip != null) {
        emit(state.copyWith(trip: trip, isLoading: false));
      } else {
        emit(state.copyWith(
            isLoading: false, errorMessage: 'No active trip found'));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  void _toggleStopsVisibility(
      ToggleStopsVisibility event, Emitter<TripDetailState> emit) {
    emit(state.copyWith(areStopsVisible: !state.areStopsVisible));
  }

  void _getDataAndTime(GetDateAndTime event, Emitter<TripDetailState> emit) {
    emit(state.copyWith(dateTime: event.dateTime));
  }

  void _pickFile(PickFile event, Emitter<TripDetailState> emit) async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png', 'jpeg'],
      );
      if (result == null) return;
      final file = File(result.files.single.path!);
      emit(state.copyWith(selectedFile: file));
    } on PlatformException catch (e) {
      log('Failed pick file - $e, name:  VerifyNotifier');
    }
  }

  void _removeFile(RemoveFile event, Emitter<TripDetailState> emit) async {
    emit(state.copyWith(selectedFile: null));
  }

  void _scanDoc(ScanDoc event, Emitter<TripDetailState> emit) async {
    try {
      emit(state.copyWith(selectedFile: File(event.image)));
    } on PlatformException catch (e) {
      log('Failed to pick image - $e');
    }
  }

  void _uploadFiles(UploadFiles event, Emitter<TripDetailState> emit) async {
    if (state.selectedFile == null) return;

    try {
      emit(state.copyWith(isFileLoading: true));
      final file = state.selectedFile!;
      log('Uploading file: ${file.path}');

      await tripRepository.uploadDocument(file, file.path.split('/').last);

      emit(state.copyWith(isFileLoading: false, selectedFile: null));
    } catch (e) {
      emit(state.copyWith(isFileLoading: false, errorMessage: e.toString()));
      log('Failed to upload files - $e');
    }
  }
}
