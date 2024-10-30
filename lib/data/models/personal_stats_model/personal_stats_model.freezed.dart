// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonalStatsModel _$PersonalStatsModelFromJson(Map<String, dynamic> json) {
  return _PersonalStatsModel.fromJson(json);
}

/// @nodoc
mixin _$PersonalStatsModel {
  @JsonKey(name: 'current_month')
  int get currentMonth => throw _privateConstructorUsedError;
  MonthlyModel get monthly => throw _privateConstructorUsedError;
  LifeTimeModel get lifetime => throw _privateConstructorUsedError;

  /// Serializes this PersonalStatsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PersonalStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonalStatsModelCopyWith<PersonalStatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalStatsModelCopyWith<$Res> {
  factory $PersonalStatsModelCopyWith(
          PersonalStatsModel value, $Res Function(PersonalStatsModel) then) =
      _$PersonalStatsModelCopyWithImpl<$Res, PersonalStatsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_month') int currentMonth,
      MonthlyModel monthly,
      LifeTimeModel lifetime});

  $MonthlyModelCopyWith<$Res> get monthly;
  $LifeTimeModelCopyWith<$Res> get lifetime;
}

/// @nodoc
class _$PersonalStatsModelCopyWithImpl<$Res, $Val extends PersonalStatsModel>
    implements $PersonalStatsModelCopyWith<$Res> {
  _$PersonalStatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonalStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? monthly = null,
    Object? lifetime = null,
  }) {
    return _then(_value.copyWith(
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as int,
      monthly: null == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as MonthlyModel,
      lifetime: null == lifetime
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as LifeTimeModel,
    ) as $Val);
  }

  /// Create a copy of PersonalStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MonthlyModelCopyWith<$Res> get monthly {
    return $MonthlyModelCopyWith<$Res>(_value.monthly, (value) {
      return _then(_value.copyWith(monthly: value) as $Val);
    });
  }

  /// Create a copy of PersonalStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LifeTimeModelCopyWith<$Res> get lifetime {
    return $LifeTimeModelCopyWith<$Res>(_value.lifetime, (value) {
      return _then(_value.copyWith(lifetime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PersonalStatsModelImplCopyWith<$Res>
    implements $PersonalStatsModelCopyWith<$Res> {
  factory _$$PersonalStatsModelImplCopyWith(_$PersonalStatsModelImpl value,
          $Res Function(_$PersonalStatsModelImpl) then) =
      __$$PersonalStatsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_month') int currentMonth,
      MonthlyModel monthly,
      LifeTimeModel lifetime});

  @override
  $MonthlyModelCopyWith<$Res> get monthly;
  @override
  $LifeTimeModelCopyWith<$Res> get lifetime;
}

/// @nodoc
class __$$PersonalStatsModelImplCopyWithImpl<$Res>
    extends _$PersonalStatsModelCopyWithImpl<$Res, _$PersonalStatsModelImpl>
    implements _$$PersonalStatsModelImplCopyWith<$Res> {
  __$$PersonalStatsModelImplCopyWithImpl(_$PersonalStatsModelImpl _value,
      $Res Function(_$PersonalStatsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PersonalStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentMonth = null,
    Object? monthly = null,
    Object? lifetime = null,
  }) {
    return _then(_$PersonalStatsModelImpl(
      currentMonth: null == currentMonth
          ? _value.currentMonth
          : currentMonth // ignore: cast_nullable_to_non_nullable
              as int,
      monthly: null == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as MonthlyModel,
      lifetime: null == lifetime
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as LifeTimeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonalStatsModelImpl implements _PersonalStatsModel {
  const _$PersonalStatsModelImpl(
      {@JsonKey(name: 'current_month') required this.currentMonth,
      required this.monthly,
      required this.lifetime});

  factory _$PersonalStatsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonalStatsModelImplFromJson(json);

  @override
  @JsonKey(name: 'current_month')
  final int currentMonth;
  @override
  final MonthlyModel monthly;
  @override
  final LifeTimeModel lifetime;

  @override
  String toString() {
    return 'PersonalStatsModel(currentMonth: $currentMonth, monthly: $monthly, lifetime: $lifetime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonalStatsModelImpl &&
            (identical(other.currentMonth, currentMonth) ||
                other.currentMonth == currentMonth) &&
            (identical(other.monthly, monthly) || other.monthly == monthly) &&
            (identical(other.lifetime, lifetime) ||
                other.lifetime == lifetime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentMonth, monthly, lifetime);

  /// Create a copy of PersonalStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonalStatsModelImplCopyWith<_$PersonalStatsModelImpl> get copyWith =>
      __$$PersonalStatsModelImplCopyWithImpl<_$PersonalStatsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalStatsModelImplToJson(
      this,
    );
  }
}

abstract class _PersonalStatsModel implements PersonalStatsModel {
  const factory _PersonalStatsModel(
      {@JsonKey(name: 'current_month') required final int currentMonth,
      required final MonthlyModel monthly,
      required final LifeTimeModel lifetime}) = _$PersonalStatsModelImpl;

  factory _PersonalStatsModel.fromJson(Map<String, dynamic> json) =
      _$PersonalStatsModelImpl.fromJson;

  @override
  @JsonKey(name: 'current_month')
  int get currentMonth;
  @override
  MonthlyModel get monthly;
  @override
  LifeTimeModel get lifetime;

  /// Create a copy of PersonalStatsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonalStatsModelImplCopyWith<_$PersonalStatsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
