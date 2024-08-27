// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadDocumentResponse _$UploadDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _UploadDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$UploadDocumentResponse {
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_id')
  String get uploadId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_filename')
  String get originalFilename => throw _privateConstructorUsedError;
  @JsonKey(name: 'size_in_bytes')
  int get sizeInBytes => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this UploadDocumentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadDocumentResponseCopyWith<UploadDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocumentResponseCopyWith<$Res> {
  factory $UploadDocumentResponseCopyWith(UploadDocumentResponse value,
          $Res Function(UploadDocumentResponse) then) =
      _$UploadDocumentResponseCopyWithImpl<$Res, UploadDocumentResponse>;
  @useResult
  $Res call(
      {bool success,
      @JsonKey(name: 'upload_id') String uploadId,
      String name,
      @JsonKey(name: 'original_filename') String originalFilename,
      @JsonKey(name: 'size_in_bytes') int sizeInBytes,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl});
}

/// @nodoc
class _$UploadDocumentResponseCopyWithImpl<$Res,
        $Val extends UploadDocumentResponse>
    implements $UploadDocumentResponseCopyWith<$Res> {
  _$UploadDocumentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? uploadId = null,
    Object? name = null,
    Object? originalFilename = null,
    Object? sizeInBytes = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadId: null == uploadId
          ? _value.uploadId
          : uploadId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalFilename: null == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String,
      sizeInBytes: null == sizeInBytes
          ? _value.sizeInBytes
          : sizeInBytes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadDocumentResponseImplCopyWith<$Res>
    implements $UploadDocumentResponseCopyWith<$Res> {
  factory _$$UploadDocumentResponseImplCopyWith(
          _$UploadDocumentResponseImpl value,
          $Res Function(_$UploadDocumentResponseImpl) then) =
      __$$UploadDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success,
      @JsonKey(name: 'upload_id') String uploadId,
      String name,
      @JsonKey(name: 'original_filename') String originalFilename,
      @JsonKey(name: 'size_in_bytes') int sizeInBytes,
      @JsonKey(name: 'thumbnail_url') String thumbnailUrl});
}

/// @nodoc
class __$$UploadDocumentResponseImplCopyWithImpl<$Res>
    extends _$UploadDocumentResponseCopyWithImpl<$Res,
        _$UploadDocumentResponseImpl>
    implements _$$UploadDocumentResponseImplCopyWith<$Res> {
  __$$UploadDocumentResponseImplCopyWithImpl(
      _$UploadDocumentResponseImpl _value,
      $Res Function(_$UploadDocumentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? uploadId = null,
    Object? name = null,
    Object? originalFilename = null,
    Object? sizeInBytes = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$UploadDocumentResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadId: null == uploadId
          ? _value.uploadId
          : uploadId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalFilename: null == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String,
      sizeInBytes: null == sizeInBytes
          ? _value.sizeInBytes
          : sizeInBytes // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadDocumentResponseImpl implements _UploadDocumentResponse {
  const _$UploadDocumentResponseImpl(
      {required this.success,
      @JsonKey(name: 'upload_id') required this.uploadId,
      required this.name,
      @JsonKey(name: 'original_filename') required this.originalFilename,
      @JsonKey(name: 'size_in_bytes') required this.sizeInBytes,
      @JsonKey(name: 'thumbnail_url') required this.thumbnailUrl});

  factory _$UploadDocumentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadDocumentResponseImplFromJson(json);

  @override
  final bool success;
  @override
  @JsonKey(name: 'upload_id')
  final String uploadId;
  @override
  final String name;
  @override
  @JsonKey(name: 'original_filename')
  final String originalFilename;
  @override
  @JsonKey(name: 'size_in_bytes')
  final int sizeInBytes;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String thumbnailUrl;

  @override
  String toString() {
    return 'UploadDocumentResponse(success: $success, uploadId: $uploadId, name: $name, originalFilename: $originalFilename, sizeInBytes: $sizeInBytes, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadDocumentResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.uploadId, uploadId) ||
                other.uploadId == uploadId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalFilename, originalFilename) ||
                other.originalFilename == originalFilename) &&
            (identical(other.sizeInBytes, sizeInBytes) ||
                other.sizeInBytes == sizeInBytes) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, uploadId, name,
      originalFilename, sizeInBytes, thumbnailUrl);

  /// Create a copy of UploadDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadDocumentResponseImplCopyWith<_$UploadDocumentResponseImpl>
      get copyWith => __$$UploadDocumentResponseImplCopyWithImpl<
          _$UploadDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _UploadDocumentResponse implements UploadDocumentResponse {
  const factory _UploadDocumentResponse(
          {required final bool success,
          @JsonKey(name: 'upload_id') required final String uploadId,
          required final String name,
          @JsonKey(name: 'original_filename')
          required final String originalFilename,
          @JsonKey(name: 'size_in_bytes') required final int sizeInBytes,
          @JsonKey(name: 'thumbnail_url') required final String thumbnailUrl}) =
      _$UploadDocumentResponseImpl;

  factory _UploadDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$UploadDocumentResponseImpl.fromJson;

  @override
  bool get success;
  @override
  @JsonKey(name: 'upload_id')
  String get uploadId;
  @override
  String get name;
  @override
  @JsonKey(name: 'original_filename')
  String get originalFilename;
  @override
  @JsonKey(name: 'size_in_bytes')
  int get sizeInBytes;
  @override
  @JsonKey(name: 'thumbnail_url')
  String get thumbnailUrl;

  /// Create a copy of UploadDocumentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadDocumentResponseImplCopyWith<_$UploadDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
