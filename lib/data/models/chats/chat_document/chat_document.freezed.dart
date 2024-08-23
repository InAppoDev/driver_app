// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatDocument _$ChatDocumentFromJson(Map<String, dynamic> json) {
  return _ChatDocument.fromJson(json);
}

/// @nodoc
mixin _$ChatDocument {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_filename')
  String? get originalFilename => throw _privateConstructorUsedError;
  @JsonKey(name: 'size_in_bytes')
  int? get sizeInBytes => throw _privateConstructorUsedError;
  String? get ext => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  String? get downloadUrl => throw _privateConstructorUsedError;

  /// Serializes this ChatDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatDocumentCopyWith<ChatDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDocumentCopyWith<$Res> {
  factory $ChatDocumentCopyWith(
          ChatDocument value, $Res Function(ChatDocument) then) =
      _$ChatDocumentCopyWithImpl<$Res, ChatDocument>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'original_filename') String? originalFilename,
      @JsonKey(name: 'size_in_bytes') int? sizeInBytes,
      String? ext,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'download_url') String? downloadUrl});
}

/// @nodoc
class _$ChatDocumentCopyWithImpl<$Res, $Val extends ChatDocument>
    implements $ChatDocumentCopyWith<$Res> {
  _$ChatDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originalFilename = freezed,
    Object? sizeInBytes = freezed,
    Object? ext = freezed,
    Object? thumbnailUrl = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalFilename: freezed == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeInBytes: freezed == sizeInBytes
          ? _value.sizeInBytes
          : sizeInBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDocumentImplCopyWith<$Res>
    implements $ChatDocumentCopyWith<$Res> {
  factory _$$ChatDocumentImplCopyWith(
          _$ChatDocumentImpl value, $Res Function(_$ChatDocumentImpl) then) =
      __$$ChatDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'original_filename') String? originalFilename,
      @JsonKey(name: 'size_in_bytes') int? sizeInBytes,
      String? ext,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'download_url') String? downloadUrl});
}

/// @nodoc
class __$$ChatDocumentImplCopyWithImpl<$Res>
    extends _$ChatDocumentCopyWithImpl<$Res, _$ChatDocumentImpl>
    implements _$$ChatDocumentImplCopyWith<$Res> {
  __$$ChatDocumentImplCopyWithImpl(
      _$ChatDocumentImpl _value, $Res Function(_$ChatDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originalFilename = freezed,
    Object? sizeInBytes = freezed,
    Object? ext = freezed,
    Object? thumbnailUrl = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_$ChatDocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalFilename: freezed == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeInBytes: freezed == sizeInBytes
          ? _value.sizeInBytes
          : sizeInBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDocumentImpl implements _ChatDocument {
  const _$ChatDocumentImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'original_filename') this.originalFilename,
      @JsonKey(name: 'size_in_bytes') this.sizeInBytes,
      this.ext,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'download_url') this.downloadUrl});

  factory _$ChatDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDocumentImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'original_filename')
  final String? originalFilename;
  @override
  @JsonKey(name: 'size_in_bytes')
  final int? sizeInBytes;
  @override
  final String? ext;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'download_url')
  final String? downloadUrl;

  @override
  String toString() {
    return 'ChatDocument(id: $id, name: $name, originalFilename: $originalFilename, sizeInBytes: $sizeInBytes, ext: $ext, thumbnailUrl: $thumbnailUrl, downloadUrl: $downloadUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalFilename, originalFilename) ||
                other.originalFilename == originalFilename) &&
            (identical(other.sizeInBytes, sizeInBytes) ||
                other.sizeInBytes == sizeInBytes) &&
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, originalFilename,
      sizeInBytes, ext, thumbnailUrl, downloadUrl);

  /// Create a copy of ChatDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDocumentImplCopyWith<_$ChatDocumentImpl> get copyWith =>
      __$$ChatDocumentImplCopyWithImpl<_$ChatDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDocumentImplToJson(
      this,
    );
  }
}

abstract class _ChatDocument implements ChatDocument {
  const factory _ChatDocument(
          {required final int id,
          required final String name,
          @JsonKey(name: 'original_filename') final String? originalFilename,
          @JsonKey(name: 'size_in_bytes') final int? sizeInBytes,
          final String? ext,
          @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
          @JsonKey(name: 'download_url') final String? downloadUrl}) =
      _$ChatDocumentImpl;

  factory _ChatDocument.fromJson(Map<String, dynamic> json) =
      _$ChatDocumentImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'original_filename')
  String? get originalFilename;
  @override
  @JsonKey(name: 'size_in_bytes')
  int? get sizeInBytes;
  @override
  String? get ext;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'download_url')
  String? get downloadUrl;

  /// Create a copy of ChatDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDocumentImplCopyWith<_$ChatDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
