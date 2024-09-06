
part of 'trip_bloc.dart';

@freezed
class TripEvent with _$TripEvent {
  const factory TripEvent.changeTab(
      {required TabStatus status, TripModel? trip}) = _ChangeTabPressed;

  const factory TripEvent.getDateAndTime({required String dateTime}) =
      _GetDateAndTime;

  const factory TripEvent.pickFile() = _PickFile;

  const factory TripEvent.removeFile({required File file}) = _RemoveFile;

  const factory TripEvent.scanDoc(String image) = _ScanDoc;

  const factory TripEvent.uploadFiles() = _UploadFiles;
}
