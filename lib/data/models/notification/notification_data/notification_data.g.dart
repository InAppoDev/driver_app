// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      chatId: (json['chatId'] as num?)?.toInt(),
      messageId: (json['messageId'] as num?)?.toInt(),
      sender: json['sender'] == null
          ? null
          : NotificationSender.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'messageId': instance.messageId,
      'sender': instance.sender,
    };
