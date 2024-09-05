// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_sender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSenderImpl _$$NotificationSenderImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSenderImpl(
      senderId: (json['senderId'] as num?)?.toInt(),
      senderType: json['senderType'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$NotificationSenderImplToJson(
        _$NotificationSenderImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderType': instance.senderType,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
