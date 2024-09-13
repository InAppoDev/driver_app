// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_driver/data/models/dispatch/cargo_info/cargo_info_model.dart';
import 'package:tms_driver/data/models/dispatch/dipatch_detail_model/dispatch_detail_model.dart';

part 'dispatch_model.freezed.dart';
part 'dispatch_model.g.dart';

@freezed
class DispatchModel with _$DispatchModel {
  const factory DispatchModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'truck_load_id') required int truckLoadId,
    @JsonKey(name: 'waypoints') required List<DispatchDetailModel> waypoints,
    @JsonKey(name: 'next_waypoint_id') required int nextWaypointId,
    @JsonKey(name: 'is_tonu_declared') required bool isTonuDeclared,
    @JsonKey(name: 'is_finished') required bool isFinished,
    @JsonKey(name: 'temperature_maintain_type') String? temperatureMaintainType,
    @JsonKey(name: 'temperature_maintain_from') int? temperatureMaintainFrom,
    @JsonKey(name: 'temperature_maintain_to') int? temperatureMaintainTo,
    @JsonKey(name: 'cargo_info') required CargoInfoModel cargoInfo,
    @JsonKey(name: 'next_mandatory_check_call_type')
    String? nextMandatoryCheckCallType,
    @JsonKey(name: 'chat_id') required int chatId,
    @JsonKey(name: 'route_total_mi') required String routeTotalMi,
  }) = _DispatchModel;

  factory DispatchModel.fromJson(Map<String, dynamic> json) =>
      _$DispatchModelFromJson(json);
}
