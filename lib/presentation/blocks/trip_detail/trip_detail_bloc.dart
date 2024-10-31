import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/check/check_call/check_call_model.dart';
import 'package:tms_driver/data/models/check/location/location_model.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/data/models/document/upload_document_response.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';
import 'package:tms_driver/presentation/consts/consts.dart';

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
    on<ConfirmTrip>(_confirmTrip);
    on<AddDocument>(_onAddDocument);
    on<ScanDocument>(_onScanDocument);
    on<RemoveDocument>(_onRemoveDocument);
    on<SetCheckCallCheckerToNull>(_setCheckCallCheckerToNull);
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

  void _setCheckCallCheckerToNull(
      SetCheckCallCheckerToNull event, Emitter<TripDetailState> emit) {
    emit(state.copyWith(isConfirmTripSuccesses: null));
  }

  Future<Map<String, dynamic>> _convertPathToBytes(
      List<String> documentIds) async {
    final List<String> documentsIds = [];

    for (final doc in documentIds) {
      final docResp = await _sendDocsGetIds(doc);
      if (docResp.success) {
        documentsIds.add(docResp.uploadId);
      } else {
        return {'documents': [], 'isLoaded': false};
      }
    }

    return {'documents': documentsIds, 'isLoaded': true};
  }

  Future<UploadDocumentResponse> _sendDocsGetIds(String doc) async {
    return await tripRepository.uploadDocument(File(doc), extractFileName(doc));
  }

  Future<void> _confirmTrip(
      ConfirmTrip event, Emitter<TripDetailState> emit) async {
    emit(state.copyWith(
      isCheckCallLoading: true,
      checkCallResponseMessage: null,
    ));
    try {
      final respMap = await _convertPathToBytes(event.documentIds);
      if (respMap['isLoaded']) {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        final CheckCallModel checkCallModel = CheckCallModel(
          location: LocationModel(
            lat: position.latitude,
            lng: position.longitude,
          ),
          type: event.type,
          etaTimestamp: event.etaTimestamp,
          comment: event.comment,
          documentUploadIds: respMap['documents'],
          isCleanBol: event.isCleanBol,
          isLoadReject: event.isLoadReject,
        );

        final checkResult = await tripRepository.sendCheckCall(
          id: event.tripId,
          checkCall: checkCallModel,
        );

        if (!checkResult.$2) {
          event.onResult();
        }

        emit(state.copyWith(
          isConfirmTripSuccesses: checkResult.$2,
          isCheckCallLoading: false,
          checkCallResponseMessage: checkResult.$1,
        ));
      } else {
        emit(state.copyWith(
          isConfirmTripSuccesses: false,
          isCheckCallLoading: false,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        isConfirmTripSuccesses: false,
        isCheckCallLoading: false,
      ));
    }
  }

  Future<void> _onAddDocument(
      AddDocument event, Emitter<TripDetailState> emit) async {
    final List<String> docs = [];
    docs.addAll(state.documents);
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'png', 'jpeg'],
      );
      if (result == null) return;
      docs.add(result.files.single.path!);

      emit(state.copyWith(documents: docs));
    } catch (e) {
      emit(state.copyWith(status: ActiveTripStatus.failure));
    }
  }

  Future<void> _onScanDocument(
      ScanDocument event, Emitter<TripDetailState> emit) async {
    final List<String> docs = [];
    docs.addAll(state.documents);
    docs.add(event.image);
    emit(state.copyWith(documents: docs));
  }

  Future<void> _onRemoveDocument(
      RemoveDocument event, Emitter<TripDetailState> emit) async {
    final List<String> docs = [];
    docs.addAll(state.documents);

    docs.removeWhere((doc) {
      return doc == event.doc;
    });
    emit(state.copyWith(documents: docs));
  }

  Future<void> _loadActiveTrip(
      LoadActiveTrip event, Emitter<TripDetailState> emit) async {
    emit(state.copyWith(status: ActiveTripStatus.loading));

    try {
      final DispatchModel? activeTrip = await tripRepository.getActiveTrip();

      if (activeTrip != null) {
        emit(
          state.copyWith(
            status: ActiveTripStatus.success,
            trip: activeTrip,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: ActiveTripStatus.success,
            trip: null,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: ActiveTripStatus.failure,
          errorMessage: e.toString(),
        ),
      );
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
