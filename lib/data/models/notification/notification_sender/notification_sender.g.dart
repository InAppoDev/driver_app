// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_sender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationSenderImpl _$$NotificationSenderImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSenderImpl(
      senderId: (json['sender_id'] as num?)?.toInt(),
      senderType: json['sender_type'] as String?,
      name: json['name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$NotificationSenderImplToJson(
        _$NotificationSenderImpl instance) =>
    <String, dynamic>{
      'sender_id': instance.senderId,
      'sender_type': instance.senderType,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
    };
