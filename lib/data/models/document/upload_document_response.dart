import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_document_response.freezed.dart';
part 'upload_document_response.g.dart';

@freezed
class UploadDocumentResponse with _$UploadDocumentResponse {
  const factory UploadDocumentResponse({
    required bool success,
    @JsonKey(name: 'upload_id') required String uploadId,
    required String name,
    @JsonKey(name: 'original_filename') required String originalFilename,
    @JsonKey(name: 'size_in_bytes') required int sizeInBytes,
    @JsonKey(name: 'thumbnail_url') required String thumbnailUrl,
  }) = _UploadDocumentResponse;

  factory UploadDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadDocumentResponseFromJson(json);
}
