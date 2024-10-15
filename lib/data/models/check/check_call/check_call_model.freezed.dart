// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_call_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckCallModel _$CheckCallModelFromJson(Map<String, dynamic> json) {
  return _CheckCallModel.fromJson(json);
}

/// @nodoc
mixin _$CheckCallModel {
  LocationModel get location => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String>? get documentUploadIds => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int? get etaTimestamp => throw _privateConstructorUsedError;
  bool? get isCleanBol => throw _privateConstructorUsedError;
  bool? get isLoadReject => throw _privateConstructorUsedError;

  /// Serializes this CheckCallModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckCallModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckCallModelCopyWith<CheckCallModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCallModelCopyWith<$Res> {
  factory $CheckCallModelCopyWith(
          CheckCallModel value, $Res Function(CheckCallModel) then) =
      _$CheckCallModelCopyWithImpl<$Res, CheckCallModel>;
  @useResult
  $Res call(
      {LocationModel location,
      String type,
      List<String>? documentUploadIds,
      String? comment,
      int? etaTimestamp,
      bool? isCleanBol,
      bool? isLoadReject});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$CheckCallModelCopyWithImpl<$Res, $Val extends CheckCallModel>
    implements $CheckCallModelCopyWith<$Res> {
  _$CheckCallModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckCallModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? type = null,
    Object? documentUploadIds = freezed,
    Object? comment = freezed,
    Object? etaTimestamp = freezed,
    Object? isCleanBol = freezed,
    Object? isLoadReject = freezed,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documentUploadIds: freezed == documentUploadIds
          ? _value.documentUploadIds
          : documentUploadIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      etaTimestamp: freezed == etaTimestamp
          ? _value.etaTimestamp
          : etaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      isCleanBol: freezed == isCleanBol
          ? _value.isCleanBol
          : isCleanBol // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadReject: freezed == isLoadReject
          ? _value.isLoadReject
          : isLoadReject // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of CheckCallModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckCallModelImplCopyWith<$Res>
    implements $CheckCallModelCopyWith<$Res> {
  factory _$$CheckCallModelImplCopyWith(_$CheckCallModelImpl value,
          $Res Function(_$CheckCallModelImpl) then) =
      __$$CheckCallModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationModel location,
      String type,
      List<String>? documentUploadIds,
      String? comment,
      int? etaTimestamp,
      bool? isCleanBol,
      bool? isLoadReject});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$CheckCallModelImplCopyWithImpl<$Res>
    extends _$CheckCallModelCopyWithImpl<$Res, _$CheckCallModelImpl>
    implements _$$CheckCallModelImplCopyWith<$Res> {
  __$$CheckCallModelImplCopyWithImpl(
      _$CheckCallModelImpl _value, $Res Function(_$CheckCallModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckCallModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? type = null,
    Object? documentUploadIds = freezed,
    Object? comment = freezed,
    Object? etaTimestamp = freezed,
    Object? isCleanBol = freezed,
    Object? isLoadReject = freezed,
  }) {
    return _then(_$CheckCallModelImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documentUploadIds: freezed == documentUploadIds
          ? _value._documentUploadIds
          : documentUploadIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      etaTimestamp: freezed == etaTimestamp
          ? _value.etaTimestamp
          : etaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      isCleanBol: freezed == isCleanBol
          ? _value.isCleanBol
          : isCleanBol // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoadReject: freezed == isLoadReject
          ? _value.isLoadReject
          : isLoadReject // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckCallModelImpl implements _CheckCallModel {
  const _$CheckCallModelImpl(
      {required this.location,
      required this.type,
      final List<String>? documentUploadIds,
      this.comment,
      this.etaTimestamp,
      this.isCleanBol,
      this.isLoadReject})
      : _documentUploadIds = documentUploadIds;

  factory _$CheckCallModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckCallModelImplFromJson(json);

  @override
  final LocationModel location;
  @override
  final String type;
  final List<String>? _documentUploadIds;
  @override
  List<String>? get documentUploadIds {
    final value = _documentUploadIds;
    if (value == null) return null;
    if (_documentUploadIds is EqualUnmodifiableListView)
      return _documentUploadIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? comment;
  @override
  final int? etaTimestamp;
  @override
  final bool? isCleanBol;
  @override
  final bool? isLoadReject;

  @override
  String toString() {
    return 'CheckCallModel(location: $location, type: $type, documentUploadIds: $documentUploadIds, comment: $comment, etaTimestamp: $etaTimestamp, isCleanBol: $isCleanBol, isLoadReject: $isLoadReject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCallModelImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._documentUploadIds, _documentUploadIds) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.etaTimestamp, etaTimestamp) ||
                other.etaTimestamp == etaTimestamp) &&
            (identical(other.isCleanBol, isCleanBol) ||
                other.isCleanBol == isCleanBol) &&
            (identical(other.isLoadReject, isLoadReject) ||
                other.isLoadReject == isLoadReject));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      type,
      const DeepCollectionEquality().hash(_documentUploadIds),
      comment,
      etaTimestamp,
      isCleanBol,
      isLoadReject);

  /// Create a copy of CheckCallModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCallModelImplCopyWith<_$CheckCallModelImpl> get copyWith =>
      __$$CheckCallModelImplCopyWithImpl<_$CheckCallModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckCallModelImplToJson(
      this,
    );
  }
}

abstract class _CheckCallModel implements CheckCallModel {
  const factory _CheckCallModel(
      {required final LocationModel location,
      required final String type,
      final List<String>? documentUploadIds,
      final String? comment,
      final int? etaTimestamp,
      final bool? isCleanBol,
      final bool? isLoadReject}) = _$CheckCallModelImpl;

  factory _CheckCallModel.fromJson(Map<String, dynamic> json) =
      _$CheckCallModelImpl.fromJson;

  @override
  LocationModel get location;
  @override
  String get type;
  @override
  List<String>? get documentUploadIds;
  @override
  String? get comment;
  @override
  int? get etaTimestamp;
  @override
  bool? get isCleanBol;
  @override
  bool? get isLoadReject;

  /// Create a copy of CheckCallModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckCallModelImplCopyWith<_$CheckCallModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
