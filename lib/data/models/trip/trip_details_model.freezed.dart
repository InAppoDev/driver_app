// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TripDetailsModel _$TripDetailsModelFromJson(Map<String, dynamic> json) {
  return _TripDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$TripDetailsModel {
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  /// Serializes this TripDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TripDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripDetailsModelCopyWith<TripDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripDetailsModelCopyWith<$Res> {
  factory $TripDetailsModelCopyWith(
          TripDetailsModel value, $Res Function(TripDetailsModel) then) =
      _$TripDetailsModelCopyWithImpl<$Res, TripDetailsModel>;
  @useResult
  $Res call({String? name, String? address, String? data});
}

/// @nodoc
class _$TripDetailsModelCopyWithImpl<$Res, $Val extends TripDetailsModel>
    implements $TripDetailsModelCopyWith<$Res> {
  _$TripDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripDetailsModelImplCopyWith<$Res>
    implements $TripDetailsModelCopyWith<$Res> {
  factory _$$TripDetailsModelImplCopyWith(_$TripDetailsModelImpl value,
          $Res Function(_$TripDetailsModelImpl) then) =
      __$$TripDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? address, String? data});
}

/// @nodoc
class __$$TripDetailsModelImplCopyWithImpl<$Res>
    extends _$TripDetailsModelCopyWithImpl<$Res, _$TripDetailsModelImpl>
    implements _$$TripDetailsModelImplCopyWith<$Res> {
  __$$TripDetailsModelImplCopyWithImpl(_$TripDetailsModelImpl _value,
      $Res Function(_$TripDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TripDetailsModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TripDetailsModelImpl implements _TripDetailsModel {
  const _$TripDetailsModelImpl({this.name, this.address, this.data});

  factory _$TripDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TripDetailsModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? data;

  @override
  String toString() {
    return 'TripDetailsModel(name: $name, address: $address, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, address, data);

  /// Create a copy of TripDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripDetailsModelImplCopyWith<_$TripDetailsModelImpl> get copyWith =>
      __$$TripDetailsModelImplCopyWithImpl<_$TripDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TripDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _TripDetailsModel implements TripDetailsModel {
  const factory _TripDetailsModel(
      {final String? name,
      final String? address,
      final String? data}) = _$TripDetailsModelImpl;

  factory _TripDetailsModel.fromJson(Map<String, dynamic> json) =
      _$TripDetailsModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get data;

  /// Create a copy of TripDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripDetailsModelImplCopyWith<_$TripDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
