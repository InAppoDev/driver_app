// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      photoUrl: json['photo_url'] as String?,
      lastMessage: json['last_message'] == null
          ? null
          : LastMessageModel.fromJson(
              json['last_message'] as Map<String, dynamic>),
      unreadMessagesCount: (json['unread_messages_count'] as num?)?.toInt(),
      orderWeight: (json['order_weight'] as num?)?.toInt(),
      lastUpdatedAt: (json['last_updated_at'] as num?)?.toInt(),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ChatParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'photo_url': instance.photoUrl,
      'last_message': instance.lastMessage,
      'unread_messages_count': instance.unreadMessagesCount,
      'order_weight': instance.orderWeight,
      'last_updated_at': instance.lastUpdatedAt,
      'participants': instance.participants,
    };
