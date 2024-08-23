// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      photo: json['photo'] as String?,
      phone: json['phone'] as String,
      email: json['email'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      stateCode: json['stateCode'] as String,
      zipCode: json['zipCode'] as String,
      emergencyPhone: json['emergencyPhone'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'photo': instance.photo,
      'phone': instance.phone,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'stateCode': instance.stateCode,
      'zipCode': instance.zipCode,
      'emergencyPhone': instance.emergencyPhone,
    };
