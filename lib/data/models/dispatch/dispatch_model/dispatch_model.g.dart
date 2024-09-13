// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispatch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DispatchModelImpl _$$DispatchModelImplFromJson(Map<String, dynamic> json) =>
    _$DispatchModelImpl(
      id: (json['id'] as num).toInt(),
      truckLoadId: (json['truck_load_id'] as num).toInt(),
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => DispatchDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextWaypointId: (json['next_waypoint_id'] as num).toInt(),
      isTonuDeclared: json['is_tonu_declared'] as bool,
      isFinished: json['is_finished'] as bool,
      temperatureMaintainType: json['temperature_maintain_type'] as String?,
      temperatureMaintainFrom:
          (json['temperature_maintain_from'] as num?)?.toInt(),
      temperatureMaintainTo: (json['temperature_maintain_to'] as num?)?.toInt(),
      cargoInfo:
          CargoInfoModel.fromJson(json['cargo_info'] as Map<String, dynamic>),
      nextMandatoryCheckCallType:
          json['next_mandatory_check_call_type'] as String?,
      chatId: (json['chat_id'] as num).toInt(),
      routeTotalMi: json['route_total_mi'] as String,
    );

Map<String, dynamic> _$$DispatchModelImplToJson(_$DispatchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'truck_load_id': instance.truckLoadId,
      'waypoints': instance.waypoints,
      'next_waypoint_id': instance.nextWaypointId,
      'is_tonu_declared': instance.isTonuDeclared,
      'is_finished': instance.isFinished,
      'temperature_maintain_type': instance.temperatureMaintainType,
      'temperature_maintain_from': instance.temperatureMaintainFrom,
      'temperature_maintain_to': instance.temperatureMaintainTo,
      'cargo_info': instance.cargoInfo,
      'next_mandatory_check_call_type': instance.nextMandatoryCheckCallType,
      'chat_id': instance.chatId,
      'route_total_mi': instance.routeTotalMi,
    };
