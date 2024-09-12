// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/trip/cargo_info/cargo_info_model.dart';
import 'package:tms_driver/data/models/trip/location_details/location_details_model.dart';

part 'dispatch_detail_model.freezed.dart';
part 'dispatch_detail_model.g.dart';

@freezed
class DispatchDetailModel with _$DispatchDetailModel {
  const factory DispatchDetailModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'type_title') required String typeTitle,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'state_code') required String stateCode,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'appt_from_timestamp') required int apptFromTimestamp,
    @JsonKey(name: 'appt_to_timestamp') required int apptToTimestamp,
    @JsonKey(name: 'cargo_info') required CargoInfoModel cargoInfo,
    @JsonKey(name: 'is_fcfs') required bool isFcfs,
    @JsonKey(name: 'shipment_reference') String? shipmentReference,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'location_details')
    required LocationDetailsModel locationDetails,
  }) = _DispatchDetailModel;

  factory DispatchDetailModel.fromJson(Map<String, dynamic> json) =>
      _$DispatchDetailModelFromJson(json);
}
