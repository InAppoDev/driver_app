import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'active_trip_bloc.freezed.dart';
part 'active_trip_event.dart';
part 'active_trip_state.dart';

class ActiveTripBloc extends Bloc<ActiveTripEvent, ActiveTripState> {
  ActiveTripBloc() : super(ActiveTripState.initial()) {
    on<GetDateAndTime>(_getDataAndTime);
    on<PickFile>(_getFile);
    on<RemoveFile>(_removeFile);
    on<PickImage>(_pickImage);
  }

  void _getDataAndTime(event, Emitter<ActiveTripState> emit) {
    emit(state.copyWith(dateTime: event.dateTime));
  }

  void _getFile(event, Emitter<ActiveTripState> emit) async {
    final List<File> files = [];
    files.addAll(state.selectedFiles);
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png', 'jpeg'],
      );
      if (result == null) return;
      final file = File(result.files.single.path!);
      files.add(file);
      emit(state.copyWith(selectedFiles: files));
    } on PlatformException catch (e) {
      log('Failed pick file - $e, name:  VerifyNotifier');
    }
  }

  void _removeFile(event, Emitter<ActiveTripState> emit) async {
    final List<File> files = [];
    files.addAll(state.selectedFiles);

    for (int i = 0; i < files.length; i++) {
      if (files[i] == event.file) {
        files.removeAt(i);
      }
    }

    emit(state.copyWith(selectedFiles: files));
  }

  void _pickImage(event, Emitter<ActiveTripState> emit) async {
    final List<File> files = [];
    files.addAll(state.selectedFiles);

    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      files.add(File(image.path));
      emit(state.copyWith(selectedFiles: files));
    } on PlatformException catch (e) {
      log('Failed pick image - $e, name:  VerifyNotifier');
    }
  }
}
