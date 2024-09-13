// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cargo_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CargoInfoModel _$CargoInfoModelFromJson(Map<String, dynamic> json) {
  return _CargoInfoModel.fromJson(json);
}

/// @nodoc
mixin _$CargoInfoModel {
  @JsonKey(name: 'commodity')
  String? get commodity => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pallets')
  int? get totalPallets => throw _privateConstructorUsedError;
  @JsonKey(name: 'pcs')
  int? get pcs => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_weight')
  int? get totalWeight => throw _privateConstructorUsedError;

  /// Serializes this CargoInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CargoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CargoInfoModelCopyWith<CargoInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CargoInfoModelCopyWith<$Res> {
  factory $CargoInfoModelCopyWith(
          CargoInfoModel value, $Res Function(CargoInfoModel) then) =
      _$CargoInfoModelCopyWithImpl<$Res, CargoInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'commodity') String? commodity,
      @JsonKey(name: 'total_pallets') int? totalPallets,
      @JsonKey(name: 'pcs') int? pcs,
      @JsonKey(name: 'total_weight') int? totalWeight});
}

/// @nodoc
class _$CargoInfoModelCopyWithImpl<$Res, $Val extends CargoInfoModel>
    implements $CargoInfoModelCopyWith<$Res> {
  _$CargoInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CargoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commodity = freezed,
    Object? totalPallets = freezed,
    Object? pcs = freezed,
    Object? totalWeight = freezed,
  }) {
    return _then(_value.copyWith(
      commodity: freezed == commodity
          ? _value.commodity
          : commodity // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPallets: freezed == totalPallets
          ? _value.totalPallets
          : totalPallets // ignore: cast_nullable_to_non_nullable
              as int?,
      pcs: freezed == pcs
          ? _value.pcs
          : pcs // ignore: cast_nullable_to_non_nullable
              as int?,
      totalWeight: freezed == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CargoInfoModelImplCopyWith<$Res>
    implements $CargoInfoModelCopyWith<$Res> {
  factory _$$CargoInfoModelImplCopyWith(_$CargoInfoModelImpl value,
          $Res Function(_$CargoInfoModelImpl) then) =
      __$$CargoInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'commodity') String? commodity,
      @JsonKey(name: 'total_pallets') int? totalPallets,
      @JsonKey(name: 'pcs') int? pcs,
      @JsonKey(name: 'total_weight') int? totalWeight});
}

/// @nodoc
class __$$CargoInfoModelImplCopyWithImpl<$Res>
    extends _$CargoInfoModelCopyWithImpl<$Res, _$CargoInfoModelImpl>
    implements _$$CargoInfoModelImplCopyWith<$Res> {
  __$$CargoInfoModelImplCopyWithImpl(
      _$CargoInfoModelImpl _value, $Res Function(_$CargoInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CargoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commodity = freezed,
    Object? totalPallets = freezed,
    Object? pcs = freezed,
    Object? totalWeight = freezed,
  }) {
    return _then(_$CargoInfoModelImpl(
      commodity: freezed == commodity
          ? _value.commodity
          : commodity // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPallets: freezed == totalPallets
          ? _value.totalPallets
          : totalPallets // ignore: cast_nullable_to_non_nullable
              as int?,
      pcs: freezed == pcs
          ? _value.pcs
          : pcs // ignore: cast_nullable_to_non_nullable
              as int?,
      totalWeight: freezed == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CargoInfoModelImpl implements _CargoInfoModel {
  const _$CargoInfoModelImpl(
      {@JsonKey(name: 'commodity') this.commodity,
      @JsonKey(name: 'total_pallets') this.totalPallets,
      @JsonKey(name: 'pcs') this.pcs,
      @JsonKey(name: 'total_weight') this.totalWeight});

  factory _$CargoInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CargoInfoModelImplFromJson(json);

  @override
  @JsonKey(name: 'commodity')
  final String? commodity;
  @override
  @JsonKey(name: 'total_pallets')
  final int? totalPallets;
  @override
  @JsonKey(name: 'pcs')
  final int? pcs;
  @override
  @JsonKey(name: 'total_weight')
  final int? totalWeight;

  @override
  String toString() {
    return 'CargoInfoModel(commodity: $commodity, totalPallets: $totalPallets, pcs: $pcs, totalWeight: $totalWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CargoInfoModelImpl &&
            (identical(other.commodity, commodity) ||
                other.commodity == commodity) &&
            (identical(other.totalPallets, totalPallets) ||
                other.totalPallets == totalPallets) &&
            (identical(other.pcs, pcs) || other.pcs == pcs) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, commodity, totalPallets, pcs, totalWeight);

  /// Create a copy of CargoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CargoInfoModelImplCopyWith<_$CargoInfoModelImpl> get copyWith =>
      __$$CargoInfoModelImplCopyWithImpl<_$CargoInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CargoInfoModelImplToJson(
      this,
    );
  }
}

abstract class _CargoInfoModel implements CargoInfoModel {
  const factory _CargoInfoModel(
          {@JsonKey(name: 'commodity') final String? commodity,
          @JsonKey(name: 'total_pallets') final int? totalPallets,
          @JsonKey(name: 'pcs') final int? pcs,
          @JsonKey(name: 'total_weight') final int? totalWeight}) =
      _$CargoInfoModelImpl;

  factory _CargoInfoModel.fromJson(Map<String, dynamic> json) =
      _$CargoInfoModelImpl.fromJson;

  @override
  @JsonKey(name: 'commodity')
  String? get commodity;
  @override
  @JsonKey(name: 'total_pallets')
  int? get totalPallets;
  @override
  @JsonKey(name: 'pcs')
  int? get pcs;
  @override
  @JsonKey(name: 'total_weight')
  int? get totalWeight;

  /// Create a copy of CargoInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CargoInfoModelImplCopyWith<_$CargoInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
