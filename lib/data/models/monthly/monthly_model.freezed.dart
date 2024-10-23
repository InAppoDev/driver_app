// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonthlyModel _$MonthlyModelFromJson(Map<String, dynamic> json) {
  return _MonthlyModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyModel {
  int? get dispatches => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_miles')
  int? get totalMiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_calls')
  int? get checkCalls => throw _privateConstructorUsedError;
  @JsonKey(name: 'drive_time_hours')
  int? get driveTimeHours => throw _privateConstructorUsedError;

  /// Serializes this MonthlyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyModelCopyWith<MonthlyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyModelCopyWith<$Res> {
  factory $MonthlyModelCopyWith(
          MonthlyModel value, $Res Function(MonthlyModel) then) =
      _$MonthlyModelCopyWithImpl<$Res, MonthlyModel>;
  @useResult
  $Res call(
      {int? dispatches,
      @JsonKey(name: 'total_miles') int? totalMiles,
      @JsonKey(name: 'check_calls') int? checkCalls,
      @JsonKey(name: 'drive_time_hours') int? driveTimeHours});
}

/// @nodoc
class _$MonthlyModelCopyWithImpl<$Res, $Val extends MonthlyModel>
    implements $MonthlyModelCopyWith<$Res> {
  _$MonthlyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dispatches = freezed,
    Object? totalMiles = freezed,
    Object? checkCalls = freezed,
    Object? driveTimeHours = freezed,
  }) {
    return _then(_value.copyWith(
      dispatches: freezed == dispatches
          ? _value.dispatches
          : dispatches // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMiles: freezed == totalMiles
          ? _value.totalMiles
          : totalMiles // ignore: cast_nullable_to_non_nullable
              as int?,
      checkCalls: freezed == checkCalls
          ? _value.checkCalls
          : checkCalls // ignore: cast_nullable_to_non_nullable
              as int?,
      driveTimeHours: freezed == driveTimeHours
          ? _value.driveTimeHours
          : driveTimeHours // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyModelImplCopyWith<$Res>
    implements $MonthlyModelCopyWith<$Res> {
  factory _$$MonthlyModelImplCopyWith(
          _$MonthlyModelImpl value, $Res Function(_$MonthlyModelImpl) then) =
      __$$MonthlyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dispatches,
      @JsonKey(name: 'total_miles') int? totalMiles,
      @JsonKey(name: 'check_calls') int? checkCalls,
      @JsonKey(name: 'drive_time_hours') int? driveTimeHours});
}

/// @nodoc
class __$$MonthlyModelImplCopyWithImpl<$Res>
    extends _$MonthlyModelCopyWithImpl<$Res, _$MonthlyModelImpl>
    implements _$$MonthlyModelImplCopyWith<$Res> {
  __$$MonthlyModelImplCopyWithImpl(
      _$MonthlyModelImpl _value, $Res Function(_$MonthlyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dispatches = freezed,
    Object? totalMiles = freezed,
    Object? checkCalls = freezed,
    Object? driveTimeHours = freezed,
  }) {
    return _then(_$MonthlyModelImpl(
      dispatches: freezed == dispatches
          ? _value.dispatches
          : dispatches // ignore: cast_nullable_to_non_nullable
              as int?,
      totalMiles: freezed == totalMiles
          ? _value.totalMiles
          : totalMiles // ignore: cast_nullable_to_non_nullable
              as int?,
      checkCalls: freezed == checkCalls
          ? _value.checkCalls
          : checkCalls // ignore: cast_nullable_to_non_nullable
              as int?,
      driveTimeHours: freezed == driveTimeHours
          ? _value.driveTimeHours
          : driveTimeHours // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyModelImpl implements _MonthlyModel {
  const _$MonthlyModelImpl(
      {required this.dispatches,
      @JsonKey(name: 'total_miles') required this.totalMiles,
      @JsonKey(name: 'check_calls') required this.checkCalls,
      @JsonKey(name: 'drive_time_hours') required this.driveTimeHours});

  factory _$MonthlyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyModelImplFromJson(json);

  @override
  final int? dispatches;
  @override
  @JsonKey(name: 'total_miles')
  final int? totalMiles;
  @override
  @JsonKey(name: 'check_calls')
  final int? checkCalls;
  @override
  @JsonKey(name: 'drive_time_hours')
  final int? driveTimeHours;

  @override
  String toString() {
    return 'MonthlyModel(dispatches: $dispatches, totalMiles: $totalMiles, checkCalls: $checkCalls, driveTimeHours: $driveTimeHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyModelImpl &&
            (identical(other.dispatches, dispatches) ||
                other.dispatches == dispatches) &&
            (identical(other.totalMiles, totalMiles) ||
                other.totalMiles == totalMiles) &&
            (identical(other.checkCalls, checkCalls) ||
                other.checkCalls == checkCalls) &&
            (identical(other.driveTimeHours, driveTimeHours) ||
                other.driveTimeHours == driveTimeHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, dispatches, totalMiles, checkCalls, driveTimeHours);

  /// Create a copy of MonthlyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyModelImplCopyWith<_$MonthlyModelImpl> get copyWith =>
      __$$MonthlyModelImplCopyWithImpl<_$MonthlyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyModelImplToJson(
      this,
    );
  }
}

abstract class _MonthlyModel implements MonthlyModel {
  const factory _MonthlyModel(
      {required final int? dispatches,
      @JsonKey(name: 'total_miles') required final int? totalMiles,
      @JsonKey(name: 'check_calls') required final int? checkCalls,
      @JsonKey(name: 'drive_time_hours')
      required final int? driveTimeHours}) = _$MonthlyModelImpl;

  factory _MonthlyModel.fromJson(Map<String, dynamic> json) =
      _$MonthlyModelImpl.fromJson;

  @override
  int? get dispatches;
  @override
  @JsonKey(name: 'total_miles')
  int? get totalMiles;
  @override
  @JsonKey(name: 'check_calls')
  int? get checkCalls;
  @override
  @JsonKey(name: 'drive_time_hours')
  int? get driveTimeHours;

  /// Create a copy of MonthlyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyModelImplCopyWith<_$MonthlyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
