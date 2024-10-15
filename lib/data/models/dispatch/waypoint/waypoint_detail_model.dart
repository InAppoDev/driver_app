// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/dispatch/cargo_info/cargo_info_model.dart';
import 'package:tms_driver/data/models/dispatch/location_details/location_details_model.dart';

part 'waypoint_detail_model.freezed.dart';
part 'waypoint_detail_model.g.dart';

@freezed
class WaypointDetailModel with _$WaypointDetailModel {
  const factory WaypointDetailModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'type_title') required String typeTitle,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'state_code') required String stateCode,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'appt_from_timestamp') int? apptFromTimestamp,
    @JsonKey(name: 'appt_to_timestamp') int? apptToTimestamp,
    @JsonKey(name: 'cargo_info') required CargoInfoModel cargoInfo,
    @JsonKey(name: 'status_highlight') required String statusHighlight,
    @JsonKey(name: 'is_fcfs') required bool isFcfs,
    @JsonKey(name: 'shipment_reference') String? shipmentReference,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'location_details')
    required LocationDetailsModel locationDetails,
  }) = _WaypointDetailModel;

  factory WaypointDetailModel.fromJson(Map<String, dynamic> json) =>
      _$WaypointDetailModelFromJson(json);
}
