// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waipoint_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WaipointSummaryModelImpl _$$WaipointSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WaipointSummaryModelImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      typeTitle: json['type_title'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      stateCode: json['state_code'] as String,
      zipCode: json['zip_code'] as String,
      apptFromTimestamp: (json['appt_from_timestamp'] as num).toInt(),
      apptToTimestamp: (json['appt_to_timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WaipointSummaryModelImplToJson(
        _$WaipointSummaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'type_title': instance.typeTitle,
      'address': instance.address,
      'city': instance.city,
      'state_code': instance.stateCode,
      'zip_code': instance.zipCode,
      'appt_from_timestamp': instance.apptFromTimestamp,
      'appt_to_timestamp': instance.apptToTimestamp,
    };
