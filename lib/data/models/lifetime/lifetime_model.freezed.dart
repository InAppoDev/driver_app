// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lifetime_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LifeTimeModel _$LifeTimeModelFromJson(Map<String, dynamic> json) {
  return _LifeTimeModel.fromJson(json);
}

/// @nodoc
mixin _$LifeTimeModel {
  @JsonKey(name: 'total_dispatches')
  int get totalTrips => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_miles')
  int get totalMiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_stops')
  int get totalStops => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_check_calls')
  int get totalCheckCalls => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortest_trip_miles')
  int get shortestTripMiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'longest_trip_miles')
  int get longestTripMiles => throw _privateConstructorUsedError;

  /// Serializes this LifeTimeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LifeTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LifeTimeModelCopyWith<LifeTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeTimeModelCopyWith<$Res> {
  factory $LifeTimeModelCopyWith(
          LifeTimeModel value, $Res Function(LifeTimeModel) then) =
      _$LifeTimeModelCopyWithImpl<$Res, LifeTimeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_dispatches') int totalTrips,
      @JsonKey(name: 'total_miles') int totalMiles,
      @JsonKey(name: 'total_stops') int totalStops,
      @JsonKey(name: 'total_check_calls') int totalCheckCalls,
      @JsonKey(name: 'shortest_trip_miles') int shortestTripMiles,
      @JsonKey(name: 'longest_trip_miles') int longestTripMiles});
}

/// @nodoc
class _$LifeTimeModelCopyWithImpl<$Res, $Val extends LifeTimeModel>
    implements $LifeTimeModelCopyWith<$Res> {
  _$LifeTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LifeTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTrips = null,
    Object? totalMiles = null,
    Object? totalStops = null,
    Object? totalCheckCalls = null,
    Object? shortestTripMiles = null,
    Object? longestTripMiles = null,
  }) {
    return _then(_value.copyWith(
      totalTrips: null == totalTrips
          ? _value.totalTrips
          : totalTrips // ignore: cast_nullable_to_non_nullable
              as int,
      totalMiles: null == totalMiles
          ? _value.totalMiles
          : totalMiles // ignore: cast_nullable_to_non_nullable
              as int,
      totalStops: null == totalStops
          ? _value.totalStops
          : totalStops // ignore: cast_nullable_to_non_nullable
              as int,
      totalCheckCalls: null == totalCheckCalls
          ? _value.totalCheckCalls
          : totalCheckCalls // ignore: cast_nullable_to_non_nullable
              as int,
      shortestTripMiles: null == shortestTripMiles
          ? _value.shortestTripMiles
          : shortestTripMiles // ignore: cast_nullable_to_non_nullable
              as int,
      longestTripMiles: null == longestTripMiles
          ? _value.longestTripMiles
          : longestTripMiles // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LifeTimeModelImplCopyWith<$Res>
    implements $LifeTimeModelCopyWith<$Res> {
  factory _$$LifeTimeModelImplCopyWith(
          _$LifeTimeModelImpl value, $Res Function(_$LifeTimeModelImpl) then) =
      __$$LifeTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_dispatches') int totalTrips,
      @JsonKey(name: 'total_miles') int totalMiles,
      @JsonKey(name: 'total_stops') int totalStops,
      @JsonKey(name: 'total_check_calls') int totalCheckCalls,
      @JsonKey(name: 'shortest_trip_miles') int shortestTripMiles,
      @JsonKey(name: 'longest_trip_miles') int longestTripMiles});
}

/// @nodoc
class __$$LifeTimeModelImplCopyWithImpl<$Res>
    extends _$LifeTimeModelCopyWithImpl<$Res, _$LifeTimeModelImpl>
    implements _$$LifeTimeModelImplCopyWith<$Res> {
  __$$LifeTimeModelImplCopyWithImpl(
      _$LifeTimeModelImpl _value, $Res Function(_$LifeTimeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LifeTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTrips = null,
    Object? totalMiles = null,
    Object? totalStops = null,
    Object? totalCheckCalls = null,
    Object? shortestTripMiles = null,
    Object? longestTripMiles = null,
  }) {
    return _then(_$LifeTimeModelImpl(
      totalTrips: null == totalTrips
          ? _value.totalTrips
          : totalTrips // ignore: cast_nullable_to_non_nullable
              as int,
      totalMiles: null == totalMiles
          ? _value.totalMiles
          : totalMiles // ignore: cast_nullable_to_non_nullable
              as int,
      totalStops: null == totalStops
          ? _value.totalStops
          : totalStops // ignore: cast_nullable_to_non_nullable
              as int,
      totalCheckCalls: null == totalCheckCalls
          ? _value.totalCheckCalls
          : totalCheckCalls // ignore: cast_nullable_to_non_nullable
              as int,
      shortestTripMiles: null == shortestTripMiles
          ? _value.shortestTripMiles
          : shortestTripMiles // ignore: cast_nullable_to_non_nullable
              as int,
      longestTripMiles: null == longestTripMiles
          ? _value.longestTripMiles
          : longestTripMiles // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LifeTimeModelImpl implements _LifeTimeModel {
  const _$LifeTimeModelImpl(
      {@JsonKey(name: 'total_dispatches') required this.totalTrips,
      @JsonKey(name: 'total_miles') required this.totalMiles,
      @JsonKey(name: 'total_stops') required this.totalStops,
      @JsonKey(name: 'total_check_calls') required this.totalCheckCalls,
      @JsonKey(name: 'shortest_trip_miles') required this.shortestTripMiles,
      @JsonKey(name: 'longest_trip_miles') required this.longestTripMiles});

  factory _$LifeTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifeTimeModelImplFromJson(json);

  @override
  @JsonKey(name: 'total_dispatches')
  final int totalTrips;
  @override
  @JsonKey(name: 'total_miles')
  final int totalMiles;
  @override
  @JsonKey(name: 'total_stops')
  final int totalStops;
  @override
  @JsonKey(name: 'total_check_calls')
  final int totalCheckCalls;
  @override
  @JsonKey(name: 'shortest_trip_miles')
  final int shortestTripMiles;
  @override
  @JsonKey(name: 'longest_trip_miles')
  final int longestTripMiles;

  @override
  String toString() {
    return 'LifeTimeModel(totalTrips: $totalTrips, totalMiles: $totalMiles, totalStops: $totalStops, totalCheckCalls: $totalCheckCalls, shortestTripMiles: $shortestTripMiles, longestTripMiles: $longestTripMiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeTimeModelImpl &&
            (identical(other.totalTrips, totalTrips) ||
                other.totalTrips == totalTrips) &&
            (identical(other.totalMiles, totalMiles) ||
                other.totalMiles == totalMiles) &&
            (identical(other.totalStops, totalStops) ||
                other.totalStops == totalStops) &&
            (identical(other.totalCheckCalls, totalCheckCalls) ||
                other.totalCheckCalls == totalCheckCalls) &&
            (identical(other.shortestTripMiles, shortestTripMiles) ||
                other.shortestTripMiles == shortestTripMiles) &&
            (identical(other.longestTripMiles, longestTripMiles) ||
                other.longestTripMiles == longestTripMiles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalTrips, totalMiles,
      totalStops, totalCheckCalls, shortestTripMiles, longestTripMiles);

  /// Create a copy of LifeTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeTimeModelImplCopyWith<_$LifeTimeModelImpl> get copyWith =>
      __$$LifeTimeModelImplCopyWithImpl<_$LifeTimeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifeTimeModelImplToJson(
      this,
    );
  }
}

abstract class _LifeTimeModel implements LifeTimeModel {
  const factory _LifeTimeModel(
      {@JsonKey(name: 'total_dispatches') required final int totalTrips,
      @JsonKey(name: 'total_miles') required final int totalMiles,
      @JsonKey(name: 'total_stops') required final int totalStops,
      @JsonKey(name: 'total_check_calls') required final int totalCheckCalls,
      @JsonKey(name: 'shortest_trip_miles')
      required final int shortestTripMiles,
      @JsonKey(name: 'longest_trip_miles')
      required final int longestTripMiles}) = _$LifeTimeModelImpl;

  factory _LifeTimeModel.fromJson(Map<String, dynamic> json) =
      _$LifeTimeModelImpl.fromJson;

  @override
  @JsonKey(name: 'total_dispatches')
  int get totalTrips;
  @override
  @JsonKey(name: 'total_miles')
  int get totalMiles;
  @override
  @JsonKey(name: 'total_stops')
  int get totalStops;
  @override
  @JsonKey(name: 'total_check_calls')
  int get totalCheckCalls;
  @override
  @JsonKey(name: 'shortest_trip_miles')
  int get shortestTripMiles;
  @override
  @JsonKey(name: 'longest_trip_miles')
  int get longestTripMiles;

  /// Create a copy of LifeTimeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LifeTimeModelImplCopyWith<_$LifeTimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
