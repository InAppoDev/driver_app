import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';

part 'active_trip_bloc.freezed.dart';
part 'active_trip_event.dart';
part 'active_trip_state.dart';

class ActiveTripBloc extends Bloc<ActiveTripEvent, ActiveTripState> {
  final TripRepository tripRepository = GetIt.instance<TripRepository>();

  ActiveTripBloc() : super(ActiveTripState.initial()) {
    on<GetDateAndTime>(_getDataAndTime);
    on<PickFile>(_getFile);
    on<RemoveFile>(_removeFile);
    on<ScanDoc>(_scanDoc);
    on<UploadFiles>(_uploadFiles);
  }

  void _getDataAndTime(event, Emitter<ActiveTripState> emit) {
    emit(state.copyWith(dateTime: event.dateTime));
  }

  void _getFile(event, Emitter<ActiveTripState> emit) async {
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

  void _removeFile(event, Emitter<ActiveTripState> emit) async {
    emit(state.copyWith(selectedFile: null));
  }

  void _scanDoc(event, Emitter<ActiveTripState> emit) async {
    try {
      emit(state.copyWith(selectedFile: File(event.image)));
    } on PlatformException catch (e) {
      log('Failed to pick image - $e');
    }
  }

  void _uploadFiles(event, Emitter<ActiveTripState> emit) async {
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
