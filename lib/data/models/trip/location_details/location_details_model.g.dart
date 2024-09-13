// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationDetailsModelImpl _$$LocationDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationDetailsModelImpl(
      companyName: json['company_name'] as String,
      phone1: json['phone_1'] as String,
      contactPerson: json['contact_person'] as String,
      directions: json['directions'] as String,
    );

Map<String, dynamic> _$$LocationDetailsModelImplToJson(
        _$LocationDetailsModelImpl instance) =>
    <String, dynamic>{
      'company_name': instance.companyName,
      'phone_1': instance.phone1,
      'contact_person': instance.contactPerson,
      'directions': instance.directions,
    };
