// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispatch_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DispatchDetailModelImpl _$$DispatchDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DispatchDetailModelImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
      typeTitle: json['type_title'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      stateCode: json['state_code'] as String,
      zipCode: json['zip_code'] as String,
      apptFromTimestamp: (json['appt_from_timestamp'] as num).toInt(),
      apptToTimestamp: (json['appt_to_timestamp'] as num).toInt(),
      cargoInfo:
          CargoInfoModel.fromJson(json['cargo_info'] as Map<String, dynamic>),
      isFcfs: json['is_fcfs'] as bool,
      shipmentReference: json['shipment_reference'] as String,
      notes: json['notes'] as String?,
      locationDetails: LocationDetailsModel.fromJson(
          json['location_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DispatchDetailModelImplToJson(
        _$DispatchDetailModelImpl instance) =>
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
      'cargo_info': instance.cargoInfo,
      'is_fcfs': instance.isFcfs,
      'shipment_reference': instance.shipmentReference,
      'notes': instance.notes,
      'location_details': instance.locationDetails,
    };
