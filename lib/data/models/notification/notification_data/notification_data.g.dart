// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataImpl _$$NotificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationDataImpl(
      chatId: (json['chat_id'] as num?)?.toInt(),
      messageId: (json['message_id'] as num?)?.toInt(),
      sender: json['sender'] == null
          ? null
          : NotificationSender.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationDataImplToJson(
        _$NotificationDataImpl instance) =>
    <String, dynamic>{
      'chat_id': instance.chatId,
      'message_id': instance.messageId,
      'sender': instance.sender,
    };
