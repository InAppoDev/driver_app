// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      name: json['name'] as String? ?? '',
      message: json['message'] as String? ?? '',
      image: json['image'] as String? ?? '',
      role: json['role'] as String? ?? '',
      time: json['time'] as String? ?? '7:33 AM',
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'image': instance.image,
      'role': instance.role,
      'time': instance.time,
    };
