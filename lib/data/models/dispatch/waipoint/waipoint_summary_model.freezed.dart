// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'waipoint_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WaipointSummaryModel _$WaipointSummaryModelFromJson(Map<String, dynamic> json) {
  return _WaipointSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$WaipointSummaryModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_title')
  String get typeTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'state_code')
  String get stateCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'zip_code')
  String get zipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'appt_from_timestamp')
  int get apptFromTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'appt_to_timestamp')
  int? get apptToTimestamp => throw _privateConstructorUsedError;

  /// Serializes this WaipointSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WaipointSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WaipointSummaryModelCopyWith<WaipointSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaipointSummaryModelCopyWith<$Res> {
  factory $WaipointSummaryModelCopyWith(WaipointSummaryModel value,
          $Res Function(WaipointSummaryModel) then) =
      _$WaipointSummaryModelCopyWithImpl<$Res, WaipointSummaryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'type_title') String typeTitle,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'state_code') String stateCode,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'appt_from_timestamp') int apptFromTimestamp,
      @JsonKey(name: 'appt_to_timestamp') int? apptToTimestamp});
}

/// @nodoc
class _$WaipointSummaryModelCopyWithImpl<$Res,
        $Val extends WaipointSummaryModel>
    implements $WaipointSummaryModelCopyWith<$Res> {
  _$WaipointSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WaipointSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeTitle = null,
    Object? address = null,
    Object? city = null,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? apptFromTimestamp = null,
    Object? apptToTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeTitle: null == typeTitle
          ? _value.typeTitle
          : typeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      apptFromTimestamp: null == apptFromTimestamp
          ? _value.apptFromTimestamp
          : apptFromTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      apptToTimestamp: freezed == apptToTimestamp
          ? _value.apptToTimestamp
          : apptToTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WaipointSummaryModelImplCopyWith<$Res>
    implements $WaipointSummaryModelCopyWith<$Res> {
  factory _$$WaipointSummaryModelImplCopyWith(_$WaipointSummaryModelImpl value,
          $Res Function(_$WaipointSummaryModelImpl) then) =
      __$$WaipointSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'type_title') String typeTitle,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'state_code') String stateCode,
      @JsonKey(name: 'zip_code') String zipCode,
      @JsonKey(name: 'appt_from_timestamp') int apptFromTimestamp,
      @JsonKey(name: 'appt_to_timestamp') int? apptToTimestamp});
}

/// @nodoc
class __$$WaipointSummaryModelImplCopyWithImpl<$Res>
    extends _$WaipointSummaryModelCopyWithImpl<$Res, _$WaipointSummaryModelImpl>
    implements _$$WaipointSummaryModelImplCopyWith<$Res> {
  __$$WaipointSummaryModelImplCopyWithImpl(_$WaipointSummaryModelImpl _value,
      $Res Function(_$WaipointSummaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WaipointSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? typeTitle = null,
    Object? address = null,
    Object? city = null,
    Object? stateCode = null,
    Object? zipCode = null,
    Object? apptFromTimestamp = null,
    Object? apptToTimestamp = freezed,
  }) {
    return _then(_$WaipointSummaryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      typeTitle: null == typeTitle
          ? _value.typeTitle
          : typeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      stateCode: null == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      apptFromTimestamp: null == apptFromTimestamp
          ? _value.apptFromTimestamp
          : apptFromTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      apptToTimestamp: freezed == apptToTimestamp
          ? _value.apptToTimestamp
          : apptToTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WaipointSummaryModelImpl implements _WaipointSummaryModel {
  const _$WaipointSummaryModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'type_title') required this.typeTitle,
      @JsonKey(name: 'address') required this.address,
      @JsonKey(name: 'city') required this.city,
      @JsonKey(name: 'state_code') required this.stateCode,
      @JsonKey(name: 'zip_code') required this.zipCode,
      @JsonKey(name: 'appt_from_timestamp') required this.apptFromTimestamp,
      @JsonKey(name: 'appt_to_timestamp') this.apptToTimestamp});

  factory _$WaipointSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WaipointSummaryModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'type_title')
  final String typeTitle;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'state_code')
  final String stateCode;
  @override
  @JsonKey(name: 'zip_code')
  final String zipCode;
  @override
  @JsonKey(name: 'appt_from_timestamp')
  final int apptFromTimestamp;
  @override
  @JsonKey(name: 'appt_to_timestamp')
  final int? apptToTimestamp;

  @override
  String toString() {
    return 'WaipointSummaryModel(id: $id, type: $type, typeTitle: $typeTitle, address: $address, city: $city, stateCode: $stateCode, zipCode: $zipCode, apptFromTimestamp: $apptFromTimestamp, apptToTimestamp: $apptToTimestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaipointSummaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeTitle, typeTitle) ||
                other.typeTitle == typeTitle) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.apptFromTimestamp, apptFromTimestamp) ||
                other.apptFromTimestamp == apptFromTimestamp) &&
            (identical(other.apptToTimestamp, apptToTimestamp) ||
                other.apptToTimestamp == apptToTimestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, typeTitle, address,
      city, stateCode, zipCode, apptFromTimestamp, apptToTimestamp);

  /// Create a copy of WaipointSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WaipointSummaryModelImplCopyWith<_$WaipointSummaryModelImpl>
      get copyWith =>
          __$$WaipointSummaryModelImplCopyWithImpl<_$WaipointSummaryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WaipointSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _WaipointSummaryModel implements WaipointSummaryModel {
  const factory _WaipointSummaryModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'type_title') required final String typeTitle,
          @JsonKey(name: 'address') required final String address,
          @JsonKey(name: 'city') required final String city,
          @JsonKey(name: 'state_code') required final String stateCode,
          @JsonKey(name: 'zip_code') required final String zipCode,
          @JsonKey(name: 'appt_from_timestamp')
          required final int apptFromTimestamp,
          @JsonKey(name: 'appt_to_timestamp') final int? apptToTimestamp}) =
      _$WaipointSummaryModelImpl;

  factory _WaipointSummaryModel.fromJson(Map<String, dynamic> json) =
      _$WaipointSummaryModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'type_title')
  String get typeTitle;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'state_code')
  String get stateCode;
  @override
  @JsonKey(name: 'zip_code')
  String get zipCode;
  @override
  @JsonKey(name: 'appt_from_timestamp')
  int get apptFromTimestamp;
  @override
  @JsonKey(name: 'appt_to_timestamp')
  int? get apptToTimestamp;

  /// Create a copy of WaipointSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WaipointSummaryModelImplCopyWith<_$WaipointSummaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
