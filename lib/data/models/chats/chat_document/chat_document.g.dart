// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_document.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDocumentImpl _$$ChatDocumentImplFromJson(Map<String, dynamic> json) =>
    _$ChatDocumentImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      originalFilename: json['original_filename'] as String?,
      sizeInBytes: (json['size_in_bytes'] as num?)?.toInt(),
      ext: json['ext'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      downloadUrl: json['download_url'] as String?,
    );

Map<String, dynamic> _$$ChatDocumentImplToJson(_$ChatDocumentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'original_filename': instance.originalFilename,
      'size_in_bytes': instance.sizeInBytes,
      'ext': instance.ext,
      'thumbnail_url': instance.thumbnailUrl,
      'download_url': instance.downloadUrl,
    };
