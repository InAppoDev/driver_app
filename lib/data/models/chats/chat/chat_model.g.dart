// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatModelImpl _$$ChatModelImplFromJson(Map<String, dynamic> json) =>
    _$ChatModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      photoUrl: json['photoUrl'] as String?,
      lastMessage: json['lastMessage'] == null
          ? null
          : LastMessageModel.fromJson(
              json['lastMessage'] as Map<String, dynamic>),
      unreadMessagesCount: (json['unreadMessagesCount'] as num?)?.toInt(),
      orderWeight: (json['orderWeight'] as num?)?.toInt(),
      lastUpdatedAt: (json['lastUpdatedAt'] as num?)?.toInt(),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ChatParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatModelImplToJson(_$ChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'photoUrl': instance.photoUrl,
      'lastMessage': instance.lastMessage,
      'unreadMessagesCount': instance.unreadMessagesCount,
      'orderWeight': instance.orderWeight,
      'lastUpdatedAt': instance.lastUpdatedAt,
      'participants': instance.participants,
    };

_$LastMessageModelImpl _$$LastMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LastMessageModelImpl(
      previewText: json['previewText'] as String,
    );

Map<String, dynamic> _$$LastMessageModelImplToJson(
        _$LastMessageModelImpl instance) =>
    <String, dynamic>{
      'previewText': instance.previewText,
    };

_$ChatParticipantImpl _$$ChatParticipantImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatParticipantImpl(
      senderId: (json['senderId'] as num).toInt(),
      senderType: json['senderType'] as String,
      name: json['name'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$ChatParticipantImplToJson(
        _$ChatParticipantImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'senderType': instance.senderType,
      'name': instance.name,
      'avatarUrl': instance.avatarUrl,
    };
