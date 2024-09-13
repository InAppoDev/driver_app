// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationDetailsModel _$LocationDetailsModelFromJson(Map<String, dynamic> json) {
  return _LocationDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$LocationDetailsModel {
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_1')
  String get phone1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_person')
  String get contactPerson => throw _privateConstructorUsedError;
  @JsonKey(name: 'directions')
  String get directions => throw _privateConstructorUsedError;

  /// Serializes this LocationDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDetailsModelCopyWith<LocationDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailsModelCopyWith<$Res> {
  factory $LocationDetailsModelCopyWith(LocationDetailsModel value,
          $Res Function(LocationDetailsModel) then) =
      _$LocationDetailsModelCopyWithImpl<$Res, LocationDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String companyName,
      @JsonKey(name: 'phone_1') String phone1,
      @JsonKey(name: 'contact_person') String contactPerson,
      @JsonKey(name: 'directions') String directions});
}

/// @nodoc
class _$LocationDetailsModelCopyWithImpl<$Res,
        $Val extends LocationDetailsModel>
    implements $LocationDetailsModelCopyWith<$Res> {
  _$LocationDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? phone1 = null,
    Object? contactPerson = null,
    Object? directions = null,
  }) {
    return _then(_value.copyWith(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phone1: null == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: null == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDetailsModelImplCopyWith<$Res>
    implements $LocationDetailsModelCopyWith<$Res> {
  factory _$$LocationDetailsModelImplCopyWith(_$LocationDetailsModelImpl value,
          $Res Function(_$LocationDetailsModelImpl) then) =
      __$$LocationDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'company_name') String companyName,
      @JsonKey(name: 'phone_1') String phone1,
      @JsonKey(name: 'contact_person') String contactPerson,
      @JsonKey(name: 'directions') String directions});
}

/// @nodoc
class __$$LocationDetailsModelImplCopyWithImpl<$Res>
    extends _$LocationDetailsModelCopyWithImpl<$Res, _$LocationDetailsModelImpl>
    implements _$$LocationDetailsModelImplCopyWith<$Res> {
  __$$LocationDetailsModelImplCopyWithImpl(_$LocationDetailsModelImpl _value,
      $Res Function(_$LocationDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyName = null,
    Object? phone1 = null,
    Object? contactPerson = null,
    Object? directions = null,
  }) {
    return _then(_$LocationDetailsModelImpl(
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      phone1: null == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String,
      contactPerson: null == contactPerson
          ? _value.contactPerson
          : contactPerson // ignore: cast_nullable_to_non_nullable
              as String,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDetailsModelImpl implements _LocationDetailsModel {
  const _$LocationDetailsModelImpl(
      {@JsonKey(name: 'company_name') required this.companyName,
      @JsonKey(name: 'phone_1') required this.phone1,
      @JsonKey(name: 'contact_person') required this.contactPerson,
      @JsonKey(name: 'directions') required this.directions});

  factory _$LocationDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  @JsonKey(name: 'phone_1')
  final String phone1;
  @override
  @JsonKey(name: 'contact_person')
  final String contactPerson;
  @override
  @JsonKey(name: 'directions')
  final String directions;

  @override
  String toString() {
    return 'LocationDetailsModel(companyName: $companyName, phone1: $phone1, contactPerson: $contactPerson, directions: $directions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailsModelImpl &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.phone1, phone1) || other.phone1 == phone1) &&
            (identical(other.contactPerson, contactPerson) ||
                other.contactPerson == contactPerson) &&
            (identical(other.directions, directions) ||
                other.directions == directions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, companyName, phone1, contactPerson, directions);

  /// Create a copy of LocationDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailsModelImplCopyWith<_$LocationDetailsModelImpl>
      get copyWith =>
          __$$LocationDetailsModelImplCopyWithImpl<_$LocationDetailsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _LocationDetailsModel implements LocationDetailsModel {
  const factory _LocationDetailsModel(
          {@JsonKey(name: 'company_name') required final String companyName,
          @JsonKey(name: 'phone_1') required final String phone1,
          @JsonKey(name: 'contact_person') required final String contactPerson,
          @JsonKey(name: 'directions') required final String directions}) =
      _$LocationDetailsModelImpl;

  factory _LocationDetailsModel.fromJson(Map<String, dynamic> json) =
      _$LocationDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  @JsonKey(name: 'phone_1')
  String get phone1;
  @override
  @JsonKey(name: 'contact_person')
  String get contactPerson;
  @override
  @JsonKey(name: 'directions')
  String get directions;

  /// Create a copy of LocationDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailsModelImplCopyWith<_$LocationDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
