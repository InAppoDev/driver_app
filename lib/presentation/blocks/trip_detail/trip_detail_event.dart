part of 'trip_detail_bloc.dart';

@freezed
class TripDetailEvent with _$TripDetailEvent {
  const factory TripDetailEvent.initialize() = Initialize;

  const factory TripDetailEvent.getDateAndTime({required String dateTime}) =
      GetDateAndTime;

  const factory TripDetailEvent.pickFile() = PickFile;
  const factory TripDetailEvent.removeFile({required File file}) = RemoveFile;
  const factory TripDetailEvent.scanDoc(String image) = ScanDoc;
  const factory TripDetailEvent.uploadFiles() = UploadFiles;
  const factory TripDetailEvent.fetchTripDetail({required int tripId}) =
      FetchTripDetail;
}
