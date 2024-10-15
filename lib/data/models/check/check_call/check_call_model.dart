import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/check/location/location_model.dart';

part 'check_call_model.freezed.dart';
part 'check_call_model.g.dart';

@freezed
class CheckCallModel with _$CheckCallModel {
  const factory CheckCallModel({
    required LocationModel location,
    required String type,
    List<String>? documentUploadIds,
    String? comment,
    int? etaTimestamp,
    bool? isCleanBol,
    bool? isLoadReject,
  }) = _CheckCallModel;

  factory CheckCallModel.fromJson(Map<String, dynamic> json) =>
      _$CheckCallModelFromJson(json);
}
