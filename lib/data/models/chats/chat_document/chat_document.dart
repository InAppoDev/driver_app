import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_document.freezed.dart';
part 'chat_document.g.dart';

@freezed
class ChatDocument with _$ChatDocument {
  const factory ChatDocument({
    required int id,
    required String name,
    @JsonKey(name: 'original_filename') String? originalFilename,
    @JsonKey(name: 'size_in_bytes') int? sizeInBytes,
    String? ext,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'download_url') String? downloadUrl,
  }) = _ChatDocument;

  factory ChatDocument.fromJson(Map<String, dynamic> json) =>
      _$ChatDocumentFromJson(json);
}
