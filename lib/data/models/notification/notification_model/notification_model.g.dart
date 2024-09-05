// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      eventAt: (json['eventAt'] as num?)?.toInt(),
      entityType: json['entityType'] as String?,
      entityId: (json['entityId'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : NotificationData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'eventAt': instance.eventAt,
      'entityType': instance.entityType,
      'entityId': instance.entityId,
      'data': instance.data,
    };
