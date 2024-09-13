// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'waipoint_summary_model.freezed.dart';
part 'waipoint_summary_model.g.dart';

@freezed
class WaipointSummaryModel with _$WaipointSummaryModel {
  const factory WaipointSummaryModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'type_title') required String typeTitle,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'state_code') required String stateCode,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'appt_from_timestamp') required int apptFromTimestamp,
    @JsonKey(name: 'appt_to_timestamp') int? apptToTimestamp,
  }) = _WaipointSummaryModel;

  factory WaipointSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$WaipointSummaryModelFromJson(json);
}
