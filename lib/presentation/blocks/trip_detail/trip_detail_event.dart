part of 'trip_detail_bloc.dart';

@freezed
class TripDetailEvent with _$TripDetailEvent {
  const factory TripDetailEvent.initialize() = Initialize;

  const factory TripDetailEvent.getDateAndTime({
    required String dateTime,
  }) = GetDateAndTime;

  const factory TripDetailEvent.pickFile() = PickFile;

  const factory TripDetailEvent.removeFile({
    required File file,
  }) = RemoveFile;

  const factory TripDetailEvent.scanDoc(String image) = ScanDoc;

  const factory TripDetailEvent.uploadFiles() = UploadFiles;

  const factory TripDetailEvent.fetchTripDetail({
    required int tripId,
  }) = FetchTripDetail;

  const factory TripDetailEvent.toggleStopsVisibility() = ToggleStopsVisibility;

  const factory TripDetailEvent.loadActiveTrip() = LoadActiveTrip;

  const factory TripDetailEvent.addDocument() = AddDocument;

  const factory TripDetailEvent.scanDocument(String image) = ScanDocument;

  const factory TripDetailEvent.removeDocument(String doc) = RemoveDocument;

  const factory TripDetailEvent.setCheckCallCheckerToNull() = SetCheckCallCheckerToNull;

  const factory TripDetailEvent.confirmTrip({
    required int tripId,
    required String type,
    int? etaTimestamp,
    String? comment,
    @Default([]) List<String> documentIds,
    bool? isCleanBol,
    bool? isLoadReject,
    required VoidCallback onResult,
  }) = ConfirmTrip;
}
