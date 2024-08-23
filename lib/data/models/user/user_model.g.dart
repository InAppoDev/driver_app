// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      photo: json['photo'] as String?,
      phone: json['phone'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      stateCode: json['state_code'] as String,
      zipCode: json['zip_code'] as String,
      emergencyPhone: json['emergency_phone'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'photo': instance.photo,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'state_code': instance.stateCode,
      'zip_code': instance.zipCode,
      'emergency_phone': instance.emergencyPhone,
    };
