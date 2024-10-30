// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_type_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CallTypeResultModel {
  String get type => throw _privateConstructorUsedError;
  int? get etaTimestamp => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<String> get documentIds => throw _privateConstructorUsedError;
  bool? get isCleanBol => throw _privateConstructorUsedError;
  bool? get isLoadReject => throw _privateConstructorUsedError;

  /// Create a copy of CallTypeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CallTypeResultModelCopyWith<CallTypeResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallTypeResultModelCopyWith<$Res> {
  factory $CallTypeResultModelCopyWith(
          CallTypeResultModel value, $Res Function(CallTypeResultModel) then) =
      _$CallTypeResultModelCopyWithImpl<$Res, CallTypeResultModel>;
  @useResult
  $Res call(
      {String type,
      int? etaTimestamp,
      String? comment,
      List<String> documentIds,
      bool? isCleanBol,
      bool? isLoadReject});
}

/// @nodoc
class _$CallTypeResultModelCopyWithImpl<$Res, $Val extends CallTypeResultModel>
    implements $CallTypeResultModelCopyWith<$Res> {
  _$CallTypeResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CallTypeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? etaTimestamp = freezed,
    Object? comment = freezed,
    Object? documentIds = null,
    Object? isCleanBol = freezed,
    Object? isLoadReject = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      etaTimestamp: freezed == etaTimestamp
          ? _value.etaTimestamp
          : etaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      documentIds: null == documentIds
          ? _value.documentIds
          : documentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
}

/// @nodoc
abstract class _$$CallTypeResultModelImplCopyWith<$Res>
    implements $CallTypeResultModelCopyWith<$Res> {
  factory _$$CallTypeResultModelImplCopyWith(_$CallTypeResultModelImpl value,
          $Res Function(_$CallTypeResultModelImpl) then) =
      __$$CallTypeResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      int? etaTimestamp,
      String? comment,
      List<String> documentIds,
      bool? isCleanBol,
      bool? isLoadReject});
}

/// @nodoc
class __$$CallTypeResultModelImplCopyWithImpl<$Res>
    extends _$CallTypeResultModelCopyWithImpl<$Res, _$CallTypeResultModelImpl>
    implements _$$CallTypeResultModelImplCopyWith<$Res> {
  __$$CallTypeResultModelImplCopyWithImpl(_$CallTypeResultModelImpl _value,
      $Res Function(_$CallTypeResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CallTypeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? etaTimestamp = freezed,
    Object? comment = freezed,
    Object? documentIds = null,
    Object? isCleanBol = freezed,
    Object? isLoadReject = freezed,
  }) {
    return _then(_$CallTypeResultModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      etaTimestamp: freezed == etaTimestamp
          ? _value.etaTimestamp
          : etaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      documentIds: null == documentIds
          ? _value._documentIds
          : documentIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
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

class _$CallTypeResultModelImpl implements _CallTypeResultModel {
  const _$CallTypeResultModelImpl(
      {required this.type,
      this.etaTimestamp,
      this.comment,
      final List<String> documentIds = const [],
      this.isCleanBol,
      this.isLoadReject})
      : _documentIds = documentIds;

  @override
  final String type;
  @override
  final int? etaTimestamp;
  @override
  final String? comment;
  final List<String> _documentIds;
  @override
  @JsonKey()
  List<String> get documentIds {
    if (_documentIds is EqualUnmodifiableListView) return _documentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentIds);
  }

  @override
  final bool? isCleanBol;
  @override
  final bool? isLoadReject;

  @override
  String toString() {
    return 'CallTypeResultModel(type: $type, etaTimestamp: $etaTimestamp, comment: $comment, documentIds: $documentIds, isCleanBol: $isCleanBol, isLoadReject: $isLoadReject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallTypeResultModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.etaTimestamp, etaTimestamp) ||
                other.etaTimestamp == etaTimestamp) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._documentIds, _documentIds) &&
            (identical(other.isCleanBol, isCleanBol) ||
                other.isCleanBol == isCleanBol) &&
            (identical(other.isLoadReject, isLoadReject) ||
                other.isLoadReject == isLoadReject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      etaTimestamp,
      comment,
      const DeepCollectionEquality().hash(_documentIds),
      isCleanBol,
      isLoadReject);

  /// Create a copy of CallTypeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallTypeResultModelImplCopyWith<_$CallTypeResultModelImpl> get copyWith =>
      __$$CallTypeResultModelImplCopyWithImpl<_$CallTypeResultModelImpl>(
          this, _$identity);
}

abstract class _CallTypeResultModel implements CallTypeResultModel {
  const factory _CallTypeResultModel(
      {required final String type,
      final int? etaTimestamp,
      final String? comment,
      final List<String> documentIds,
      final bool? isCleanBol,
      final bool? isLoadReject}) = _$CallTypeResultModelImpl;

  @override
  String get type;
  @override
  int? get etaTimestamp;
  @override
  String? get comment;
  @override
  List<String> get documentIds;
  @override
  bool? get isCleanBol;
  @override
  bool? get isLoadReject;

  /// Create a copy of CallTypeResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallTypeResultModelImplCopyWith<_$CallTypeResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
