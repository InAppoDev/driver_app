// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyModelImpl _$$MonthlyModelImplFromJson(Map<String, dynamic> json) =>
    _$MonthlyModelImpl(
      dispatches: (json['dispatches'] as num).toInt(),
      totalMiles: (json['total_miles'] as num).toInt(),
      checkCalls: (json['check_calls'] as num).toInt(),
      driveTimeHours: (json['drive_time_hours'] as num).toInt(),
    );

Map<String, dynamic> _$$MonthlyModelImplToJson(_$MonthlyModelImpl instance) =>
    <String, dynamic>{
      'dispatches': instance.dispatches,
      'total_miles': instance.totalMiles,
      'check_calls': instance.checkCalls,
      'drive_time_hours': instance.driveTimeHours,
    };
