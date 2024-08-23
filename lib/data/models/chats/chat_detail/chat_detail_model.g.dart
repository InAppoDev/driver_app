// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDetailModelImpl _$$ChatDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatDetailModelImpl(
      id: (json['id'] as num).toInt(),
      subjectType: json['subject_type'] as String,
      subjectId: (json['subject_id'] as num).toInt(),
      title: json['title'] as String,
      photoUrl: json['photo_url'] as String?,
      actionButtonType: json['action_button_type'] as String?,
      actionButtonValue: json['action_button_value'] as String?,
      firstUnreadMessageId: (json['first_unread_message_id'] as num?)?.toInt(),
      participants: (json['participants'] as List<dynamic>)
          .map((e) => ChatParticipant.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatDetailModelImplToJson(
        _$ChatDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject_type': instance.subjectType,
      'subject_id': instance.subjectId,
      'title': instance.title,
      'photo_url': instance.photoUrl,
      'action_button_type': instance.actionButtonType,
      'action_button_value': instance.actionButtonValue,
      'first_unread_message_id': instance.firstUnreadMessageId,
      'participants': instance.participants,
      'messages': instance.messages,
    };
