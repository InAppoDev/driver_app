// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_document_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadDocumentResponseImpl _$$UploadDocumentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadDocumentResponseImpl(
      success: json['success'] as bool,
      uploadId: json['upload_id'] as String,
      name: json['name'] as String,
      originalFilename: json['original_filename'] as String,
      sizeInBytes: (json['size_in_bytes'] as num).toInt(),
      thumbnailUrl: json['thumbnail_url'] as String,
    );

Map<String, dynamic> _$$UploadDocumentResponseImplToJson(
        _$UploadDocumentResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'upload_id': instance.uploadId,
      'name': instance.name,
      'original_filename': instance.originalFilename,
      'size_in_bytes': instance.sizeInBytes,
      'thumbnail_url': instance.thumbnailUrl,
    };
