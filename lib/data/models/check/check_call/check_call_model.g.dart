// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_call_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckCallModelImpl _$$CheckCallModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckCallModelImpl(
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      type: json['type'] as String,
      documentUploadIds: (json['documentUploadIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      comment: json['comment'] as String?,
      etaTimestamp: (json['etaTimestamp'] as num?)?.toInt(),
      isCleanBol: json['isCleanBol'] as bool?,
      isLoadReject: json['isLoadReject'] as bool?,
    );

Map<String, dynamic> _$$CheckCallModelImplToJson(
        _$CheckCallModelImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'type': instance.type,
      'documentUploadIds': instance.documentUploadIds,
      'comment': instance.comment,
      'etaTimestamp': instance.etaTimestamp,
      'isCleanBol': instance.isCleanBol,
      'isLoadReject': instance.isLoadReject,
    };
