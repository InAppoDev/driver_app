// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonalStatsModelImpl _$$PersonalStatsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalStatsModelImpl(
      currentMonth: (json['current_month'] as num).toInt(),
      monthly: MonthlyModel.fromJson(json['monthly'] as Map<String, dynamic>),
      lifeTime: json['lifeTime'] == null
          ? null
          : LifeTimeModel.fromJson(json['lifeTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PersonalStatsModelImplToJson(
        _$PersonalStatsModelImpl instance) =>
    <String, dynamic>{
      'current_month': instance.currentMonth,
      'monthly': instance.monthly,
      'lifeTime': instance.lifeTime,
    };
