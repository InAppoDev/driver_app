// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispatch_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DispatchListModelImpl _$$DispatchListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DispatchListModelImpl(
      id: (json['id'] as num).toInt(),
      routeTotalMi: json['route_total_mi'] as String,
      waypoints: (json['waypoints'] as List<dynamic>)
          .map((e) => WaipointSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DispatchListModelImplToJson(
        _$DispatchListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'route_total_mi': instance.routeTotalMi,
      'waypoints': instance.waypoints,
    };
