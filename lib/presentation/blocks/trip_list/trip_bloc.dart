import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

part 'trip_bloc.freezed.dart';
part 'trip_event.dart';
part 'trip_state.dart';

class TripBloc extends Bloc<TripEvent, TripState> {
  final TripRepository tripRepository = GetIt.instance<TripRepository>();

  TripBloc() : super(TripState.initial()) {
    on<_ChangeTabPressed>(_changeTabEvent);
    on<_PickFile>(_pickFile);
    on<_GetDateAndTime>(_getDataAndTime);
    on<_RemoveFile>(_removeFile);
    on<_ScanDoc>(_scanDoc);
    on<_UploadFiles>(_uploadFiles);
    on<_FetchTrips>(_fetchTrips);
  }

  void _changeTabEvent(_ChangeTabPressed event, Emitter<TripState> emit) {
    if (event.status == TabStatus.activeTrip) {
      final trip = event.trip;
      emit(state.copyWith(tabStatus: event.status, trip: trip));
    } else {
      emit(state.copyWith(tabStatus: event.status));
    }
  }

  void _fetchTrips(_FetchTrips event, Emitter<TripState> emit) async {
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
        errorMessage: e.toString(),
      ));
    }
  }

  void _getDataAndTime(_GetDateAndTime event, Emitter<TripState> emit) {
    emit(state.copyWith(dateTime: event.dateTime));
  }

  void _pickFile(_PickFile event, Emitter<TripState> emit) async {
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

  void _removeFile(_RemoveFile event, Emitter<TripState> emit) async {
    emit(state.copyWith(selectedFile: null));
  }

  void _scanDoc(event, Emitter<TripState> emit) async {
    try {
      emit(state.copyWith(selectedFile: File(event.image)));
    } on PlatformException catch (e) {
      log('Failed to pick image - $e');
    }
  }

  void _uploadFiles(_UploadFiles event, Emitter<TripState> emit) async {
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
