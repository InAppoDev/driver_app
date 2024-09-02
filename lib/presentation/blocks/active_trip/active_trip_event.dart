part of 'active_trip_bloc.dart';

@freezed
class ActiveTripEvent with _$ActiveTripEvent {
  const factory ActiveTripEvent.initialize() = Initialize;

  const factory ActiveTripEvent.getDateAndTime({required String dateTime}) =
      GetDateAndTime;

  const factory ActiveTripEvent.pickFile() = PickFile;
  const factory ActiveTripEvent.removeFile({required File file}) = RemoveFile;
  const factory ActiveTripEvent.scanDoc(String image) = ScanDoc;
  const factory ActiveTripEvent.uploadFiles() = UploadFiles;
}
