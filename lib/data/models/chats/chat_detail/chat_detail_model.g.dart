// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDetailModelImpl _$$ChatDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatDetailModelImpl(
      id: (json['id'] as num).toInt(),
      subjectType: json['subjectType'] as String,
      subjectId: (json['subjectId'] as num).toInt(),
      title: json['title'] as String,
      photoUrl: json['photoUrl'] as String?,
      actionButtonType: json['actionButtonType'] as String?,
      actionButtonValue: json['actionButtonValue'] as String?,
      firstUnreadMessageId: json['firstUnreadMessageId'] as String?,
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
      'subjectType': instance.subjectType,
      'subjectId': instance.subjectId,
      'title': instance.title,
      'photoUrl': instance.photoUrl,
      'actionButtonType': instance.actionButtonType,
      'actionButtonValue': instance.actionButtonValue,
      'firstUnreadMessageId': instance.firstUnreadMessageId,
      'participants': instance.participants,
      'messages': instance.messages,
    };

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      id: (json['id'] as num).toInt(),
      sender: ChatParticipant.fromJson(json['sender'] as Map<String, dynamic>),
      content: json['content'] as String,
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => ChatDocument.fromJson(e as Map<String, dynamic>))
          .toList(),
      sentAt: (json['sentAt'] as num).toInt(),
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender': instance.sender,
      'content': instance.content,
      'documents': instance.documents,
      'sentAt': instance.sentAt,
    };

_$ChatDocumentImpl _$$ChatDocumentImplFromJson(Map<String, dynamic> json) =>
    _$ChatDocumentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originalFilename: json['originalFilename'] as String?,
      sizeInBytes: (json['sizeInBytes'] as num?)?.toInt(),
      ext: json['ext'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      downloadUrl: json['downloadUrl'] as String?,
    );

Map<String, dynamic> _$$ChatDocumentImplToJson(_$ChatDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'originalFilename': instance.originalFilename,
      'sizeInBytes': instance.sizeInBytes,
      'ext': instance.ext,
      'thumbnailUrl': instance.thumbnailUrl,
      'downloadUrl': instance.downloadUrl,
    };
