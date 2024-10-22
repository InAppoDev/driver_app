// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lifetime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LifeTimeModelImpl _$$LifeTimeModelImplFromJson(Map<String, dynamic> json) =>
    _$LifeTimeModelImpl(
      totalTrips: (json['total_dispatches'] as num).toInt(),
      totalMiles: (json['total_miles'] as num).toInt(),
      totalStops: (json['total_stops'] as num).toInt(),
      totalCheckCalls: (json['total_check_calls'] as num).toInt(),
      shortestTripMiles: (json['shortest_trip_miles'] as num).toInt(),
      longestTripMiles: (json['longest_trip_miles'] as num).toInt(),
    );

Map<String, dynamic> _$$LifeTimeModelImplToJson(_$LifeTimeModelImpl instance) =>
    <String, dynamic>{
      'total_dispatches': instance.totalTrips,
      'total_miles': instance.totalMiles,
      'total_stops': instance.totalStops,
      'total_check_calls': instance.totalCheckCalls,
      'shortest_trip_miles': instance.shortestTripMiles,
      'longest_trip_miles': instance.longestTripMiles,
    };
