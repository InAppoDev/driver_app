// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispatch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DispatchModel _$DispatchModelFromJson(Map<String, dynamic> json) {
  return _DispatchModel.fromJson(json);
}

/// @nodoc
mixin _$DispatchModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'truck_load_id')
  int get truckLoadId => throw _privateConstructorUsedError;
  @JsonKey(name: 'waypoints')
  List<WaypointDetailModel> get waypoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_moving_timestamp')
  int? get startedMovingTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_waypoint')
  WaypointDetailModel? get nextWaypoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_eta_waypoint')
  WaypointDetailModel? get nextEtaWaypoint =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'next_eta_timestamp')
  int? get nextEtaTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_tonu_declared')
  bool get isTonuDeclared => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_finished')
  bool get isFinished => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_maintain_type')
  String? get temperatureMaintainType => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_maintain_from')
  int? get temperatureMaintainFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_maintain_to')
  int? get temperatureMaintainTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'cargo_info')
  CargoInfoModel get cargoInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_mandatory_check_call_type')
  String? get nextMandatoryCheckCallType => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'route_total_mi')
  String get routeTotalMi => throw _privateConstructorUsedError;

  /// Serializes this DispatchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DispatchModelCopyWith<DispatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispatchModelCopyWith<$Res> {
  factory $DispatchModelCopyWith(
          DispatchModel value, $Res Function(DispatchModel) then) =
      _$DispatchModelCopyWithImpl<$Res, DispatchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'truck_load_id') int truckLoadId,
      @JsonKey(name: 'waypoints') List<WaypointDetailModel> waypoints,
      @JsonKey(name: 'started_moving_timestamp') int? startedMovingTimestamp,
      @JsonKey(name: 'next_waypoint') WaypointDetailModel? nextWaypoint,
      @JsonKey(name: 'next_eta_waypoint') WaypointDetailModel? nextEtaWaypoint,
      @JsonKey(name: 'next_eta_timestamp') int? nextEtaTimestamp,
      @JsonKey(name: 'is_tonu_declared') bool isTonuDeclared,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'temperature_maintain_type')
      String? temperatureMaintainType,
      @JsonKey(name: 'temperature_maintain_from') int? temperatureMaintainFrom,
      @JsonKey(name: 'temperature_maintain_to') int? temperatureMaintainTo,
      @JsonKey(name: 'cargo_info') CargoInfoModel cargoInfo,
      @JsonKey(name: 'next_mandatory_check_call_type')
      String? nextMandatoryCheckCallType,
      @JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'route_total_mi') String routeTotalMi});

  $WaypointDetailModelCopyWith<$Res>? get nextWaypoint;
  $WaypointDetailModelCopyWith<$Res>? get nextEtaWaypoint;
  $CargoInfoModelCopyWith<$Res> get cargoInfo;
}

/// @nodoc
class _$DispatchModelCopyWithImpl<$Res, $Val extends DispatchModel>
    implements $DispatchModelCopyWith<$Res> {
  _$DispatchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? truckLoadId = null,
    Object? waypoints = null,
    Object? startedMovingTimestamp = freezed,
    Object? nextWaypoint = freezed,
    Object? nextEtaWaypoint = freezed,
    Object? nextEtaTimestamp = freezed,
    Object? isTonuDeclared = null,
    Object? isFinished = null,
    Object? temperatureMaintainType = freezed,
    Object? temperatureMaintainFrom = freezed,
    Object? temperatureMaintainTo = freezed,
    Object? cargoInfo = null,
    Object? nextMandatoryCheckCallType = freezed,
    Object? chatId = null,
    Object? routeTotalMi = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      truckLoadId: null == truckLoadId
          ? _value.truckLoadId
          : truckLoadId // ignore: cast_nullable_to_non_nullable
              as int,
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<WaypointDetailModel>,
      startedMovingTimestamp: freezed == startedMovingTimestamp
          ? _value.startedMovingTimestamp
          : startedMovingTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      nextWaypoint: freezed == nextWaypoint
          ? _value.nextWaypoint
          : nextWaypoint // ignore: cast_nullable_to_non_nullable
              as WaypointDetailModel?,
      nextEtaWaypoint: freezed == nextEtaWaypoint
          ? _value.nextEtaWaypoint
          : nextEtaWaypoint // ignore: cast_nullable_to_non_nullable
              as WaypointDetailModel?,
      nextEtaTimestamp: freezed == nextEtaTimestamp
          ? _value.nextEtaTimestamp
          : nextEtaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      isTonuDeclared: null == isTonuDeclared
          ? _value.isTonuDeclared
          : isTonuDeclared // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureMaintainType: freezed == temperatureMaintainType
          ? _value.temperatureMaintainType
          : temperatureMaintainType // ignore: cast_nullable_to_non_nullable
              as String?,
      temperatureMaintainFrom: freezed == temperatureMaintainFrom
          ? _value.temperatureMaintainFrom
          : temperatureMaintainFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureMaintainTo: freezed == temperatureMaintainTo
          ? _value.temperatureMaintainTo
          : temperatureMaintainTo // ignore: cast_nullable_to_non_nullable
              as int?,
      cargoInfo: null == cargoInfo
          ? _value.cargoInfo
          : cargoInfo // ignore: cast_nullable_to_non_nullable
              as CargoInfoModel,
      nextMandatoryCheckCallType: freezed == nextMandatoryCheckCallType
          ? _value.nextMandatoryCheckCallType
          : nextMandatoryCheckCallType // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      routeTotalMi: null == routeTotalMi
          ? _value.routeTotalMi
          : routeTotalMi // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaypointDetailModelCopyWith<$Res>? get nextWaypoint {
    if (_value.nextWaypoint == null) {
      return null;
    }

    return $WaypointDetailModelCopyWith<$Res>(_value.nextWaypoint!, (value) {
      return _then(_value.copyWith(nextWaypoint: value) as $Val);
    });
  }

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WaypointDetailModelCopyWith<$Res>? get nextEtaWaypoint {
    if (_value.nextEtaWaypoint == null) {
      return null;
    }

    return $WaypointDetailModelCopyWith<$Res>(_value.nextEtaWaypoint!, (value) {
      return _then(_value.copyWith(nextEtaWaypoint: value) as $Val);
    });
  }

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CargoInfoModelCopyWith<$Res> get cargoInfo {
    return $CargoInfoModelCopyWith<$Res>(_value.cargoInfo, (value) {
      return _then(_value.copyWith(cargoInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DispatchModelImplCopyWith<$Res>
    implements $DispatchModelCopyWith<$Res> {
  factory _$$DispatchModelImplCopyWith(
          _$DispatchModelImpl value, $Res Function(_$DispatchModelImpl) then) =
      __$$DispatchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'truck_load_id') int truckLoadId,
      @JsonKey(name: 'waypoints') List<WaypointDetailModel> waypoints,
      @JsonKey(name: 'started_moving_timestamp') int? startedMovingTimestamp,
      @JsonKey(name: 'next_waypoint') WaypointDetailModel? nextWaypoint,
      @JsonKey(name: 'next_eta_waypoint') WaypointDetailModel? nextEtaWaypoint,
      @JsonKey(name: 'next_eta_timestamp') int? nextEtaTimestamp,
      @JsonKey(name: 'is_tonu_declared') bool isTonuDeclared,
      @JsonKey(name: 'is_finished') bool isFinished,
      @JsonKey(name: 'temperature_maintain_type')
      String? temperatureMaintainType,
      @JsonKey(name: 'temperature_maintain_from') int? temperatureMaintainFrom,
      @JsonKey(name: 'temperature_maintain_to') int? temperatureMaintainTo,
      @JsonKey(name: 'cargo_info') CargoInfoModel cargoInfo,
      @JsonKey(name: 'next_mandatory_check_call_type')
      String? nextMandatoryCheckCallType,
      @JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'route_total_mi') String routeTotalMi});

  @override
  $WaypointDetailModelCopyWith<$Res>? get nextWaypoint;
  @override
  $WaypointDetailModelCopyWith<$Res>? get nextEtaWaypoint;
  @override
  $CargoInfoModelCopyWith<$Res> get cargoInfo;
}

/// @nodoc
class __$$DispatchModelImplCopyWithImpl<$Res>
    extends _$DispatchModelCopyWithImpl<$Res, _$DispatchModelImpl>
    implements _$$DispatchModelImplCopyWith<$Res> {
  __$$DispatchModelImplCopyWithImpl(
      _$DispatchModelImpl _value, $Res Function(_$DispatchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? truckLoadId = null,
    Object? waypoints = null,
    Object? startedMovingTimestamp = freezed,
    Object? nextWaypoint = freezed,
    Object? nextEtaWaypoint = freezed,
    Object? nextEtaTimestamp = freezed,
    Object? isTonuDeclared = null,
    Object? isFinished = null,
    Object? temperatureMaintainType = freezed,
    Object? temperatureMaintainFrom = freezed,
    Object? temperatureMaintainTo = freezed,
    Object? cargoInfo = null,
    Object? nextMandatoryCheckCallType = freezed,
    Object? chatId = null,
    Object? routeTotalMi = null,
  }) {
    return _then(_$DispatchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      truckLoadId: null == truckLoadId
          ? _value.truckLoadId
          : truckLoadId // ignore: cast_nullable_to_non_nullable
              as int,
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<WaypointDetailModel>,
      startedMovingTimestamp: freezed == startedMovingTimestamp
          ? _value.startedMovingTimestamp
          : startedMovingTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      nextWaypoint: freezed == nextWaypoint
          ? _value.nextWaypoint
          : nextWaypoint // ignore: cast_nullable_to_non_nullable
              as WaypointDetailModel?,
      nextEtaWaypoint: freezed == nextEtaWaypoint
          ? _value.nextEtaWaypoint
          : nextEtaWaypoint // ignore: cast_nullable_to_non_nullable
              as WaypointDetailModel?,
      nextEtaTimestamp: freezed == nextEtaTimestamp
          ? _value.nextEtaTimestamp
          : nextEtaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      isTonuDeclared: null == isTonuDeclared
          ? _value.isTonuDeclared
          : isTonuDeclared // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      temperatureMaintainType: freezed == temperatureMaintainType
          ? _value.temperatureMaintainType
          : temperatureMaintainType // ignore: cast_nullable_to_non_nullable
              as String?,
      temperatureMaintainFrom: freezed == temperatureMaintainFrom
          ? _value.temperatureMaintainFrom
          : temperatureMaintainFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      temperatureMaintainTo: freezed == temperatureMaintainTo
          ? _value.temperatureMaintainTo
          : temperatureMaintainTo // ignore: cast_nullable_to_non_nullable
              as int?,
      cargoInfo: null == cargoInfo
          ? _value.cargoInfo
          : cargoInfo // ignore: cast_nullable_to_non_nullable
              as CargoInfoModel,
      nextMandatoryCheckCallType: freezed == nextMandatoryCheckCallType
          ? _value.nextMandatoryCheckCallType
          : nextMandatoryCheckCallType // ignore: cast_nullable_to_non_nullable
              as String?,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      routeTotalMi: null == routeTotalMi
          ? _value.routeTotalMi
          : routeTotalMi // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DispatchModelImpl implements _DispatchModel {
  const _$DispatchModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'truck_load_id') required this.truckLoadId,
      @JsonKey(name: 'waypoints')
      required final List<WaypointDetailModel> waypoints,
      @JsonKey(name: 'started_moving_timestamp') this.startedMovingTimestamp,
      @JsonKey(name: 'next_waypoint') this.nextWaypoint,
      @JsonKey(name: 'next_eta_waypoint') this.nextEtaWaypoint,
      @JsonKey(name: 'next_eta_timestamp') this.nextEtaTimestamp,
      @JsonKey(name: 'is_tonu_declared') required this.isTonuDeclared,
      @JsonKey(name: 'is_finished') required this.isFinished,
      @JsonKey(name: 'temperature_maintain_type') this.temperatureMaintainType,
      @JsonKey(name: 'temperature_maintain_from') this.temperatureMaintainFrom,
      @JsonKey(name: 'temperature_maintain_to') this.temperatureMaintainTo,
      @JsonKey(name: 'cargo_info') required this.cargoInfo,
      @JsonKey(name: 'next_mandatory_check_call_type')
      this.nextMandatoryCheckCallType,
      @JsonKey(name: 'chat_id') required this.chatId,
      @JsonKey(name: 'route_total_mi') required this.routeTotalMi})
      : _waypoints = waypoints;

  factory _$DispatchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DispatchModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'truck_load_id')
  final int truckLoadId;
  final List<WaypointDetailModel> _waypoints;
  @override
  @JsonKey(name: 'waypoints')
  List<WaypointDetailModel> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  @override
  @JsonKey(name: 'started_moving_timestamp')
  final int? startedMovingTimestamp;
  @override
  @JsonKey(name: 'next_waypoint')
  final WaypointDetailModel? nextWaypoint;
  @override
  @JsonKey(name: 'next_eta_waypoint')
  final WaypointDetailModel? nextEtaWaypoint;
  @override
  @JsonKey(name: 'next_eta_timestamp')
  final int? nextEtaTimestamp;
  @override
  @JsonKey(name: 'is_tonu_declared')
  final bool isTonuDeclared;
  @override
  @JsonKey(name: 'is_finished')
  final bool isFinished;
  @override
  @JsonKey(name: 'temperature_maintain_type')
  final String? temperatureMaintainType;
  @override
  @JsonKey(name: 'temperature_maintain_from')
  final int? temperatureMaintainFrom;
  @override
  @JsonKey(name: 'temperature_maintain_to')
  final int? temperatureMaintainTo;
  @override
  @JsonKey(name: 'cargo_info')
  final CargoInfoModel cargoInfo;
  @override
  @JsonKey(name: 'next_mandatory_check_call_type')
  final String? nextMandatoryCheckCallType;
  @override
  @JsonKey(name: 'chat_id')
  final int chatId;
  @override
  @JsonKey(name: 'route_total_mi')
  final String routeTotalMi;

  @override
  String toString() {
    return 'DispatchModel(id: $id, truckLoadId: $truckLoadId, waypoints: $waypoints, startedMovingTimestamp: $startedMovingTimestamp, nextWaypoint: $nextWaypoint, nextEtaWaypoint: $nextEtaWaypoint, nextEtaTimestamp: $nextEtaTimestamp, isTonuDeclared: $isTonuDeclared, isFinished: $isFinished, temperatureMaintainType: $temperatureMaintainType, temperatureMaintainFrom: $temperatureMaintainFrom, temperatureMaintainTo: $temperatureMaintainTo, cargoInfo: $cargoInfo, nextMandatoryCheckCallType: $nextMandatoryCheckCallType, chatId: $chatId, routeTotalMi: $routeTotalMi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DispatchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.truckLoadId, truckLoadId) ||
                other.truckLoadId == truckLoadId) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            (identical(other.startedMovingTimestamp, startedMovingTimestamp) ||
                other.startedMovingTimestamp == startedMovingTimestamp) &&
            (identical(other.nextWaypoint, nextWaypoint) ||
                other.nextWaypoint == nextWaypoint) &&
            (identical(other.nextEtaWaypoint, nextEtaWaypoint) ||
                other.nextEtaWaypoint == nextEtaWaypoint) &&
            (identical(other.nextEtaTimestamp, nextEtaTimestamp) ||
                other.nextEtaTimestamp == nextEtaTimestamp) &&
            (identical(other.isTonuDeclared, isTonuDeclared) ||
                other.isTonuDeclared == isTonuDeclared) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(
                    other.temperatureMaintainType, temperatureMaintainType) ||
                other.temperatureMaintainType == temperatureMaintainType) &&
            (identical(
                    other.temperatureMaintainFrom, temperatureMaintainFrom) ||
                other.temperatureMaintainFrom == temperatureMaintainFrom) &&
            (identical(other.temperatureMaintainTo, temperatureMaintainTo) ||
                other.temperatureMaintainTo == temperatureMaintainTo) &&
            (identical(other.cargoInfo, cargoInfo) ||
                other.cargoInfo == cargoInfo) &&
            (identical(other.nextMandatoryCheckCallType,
                    nextMandatoryCheckCallType) ||
                other.nextMandatoryCheckCallType ==
                    nextMandatoryCheckCallType) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.routeTotalMi, routeTotalMi) ||
                other.routeTotalMi == routeTotalMi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      truckLoadId,
      const DeepCollectionEquality().hash(_waypoints),
      startedMovingTimestamp,
      nextWaypoint,
      nextEtaWaypoint,
      nextEtaTimestamp,
      isTonuDeclared,
      isFinished,
      temperatureMaintainType,
      temperatureMaintainFrom,
      temperatureMaintainTo,
      cargoInfo,
      nextMandatoryCheckCallType,
      chatId,
      routeTotalMi);

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DispatchModelImplCopyWith<_$DispatchModelImpl> get copyWith =>
      __$$DispatchModelImplCopyWithImpl<_$DispatchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DispatchModelImplToJson(
      this,
    );
  }
}

abstract class _DispatchModel implements DispatchModel {
  const factory _DispatchModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'truck_load_id') required final int truckLoadId,
      @JsonKey(name: 'waypoints')
      required final List<WaypointDetailModel> waypoints,
      @JsonKey(name: 'started_moving_timestamp')
      final int? startedMovingTimestamp,
      @JsonKey(name: 'next_waypoint') final WaypointDetailModel? nextWaypoint,
      @JsonKey(name: 'next_eta_waypoint')
      final WaypointDetailModel? nextEtaWaypoint,
      @JsonKey(name: 'next_eta_timestamp') final int? nextEtaTimestamp,
      @JsonKey(name: 'is_tonu_declared') required final bool isTonuDeclared,
      @JsonKey(name: 'is_finished') required final bool isFinished,
      @JsonKey(name: 'temperature_maintain_type')
      final String? temperatureMaintainType,
      @JsonKey(name: 'temperature_maintain_from')
      final int? temperatureMaintainFrom,
      @JsonKey(name: 'temperature_maintain_to')
      final int? temperatureMaintainTo,
      @JsonKey(name: 'cargo_info') required final CargoInfoModel cargoInfo,
      @JsonKey(name: 'next_mandatory_check_call_type')
      final String? nextMandatoryCheckCallType,
      @JsonKey(name: 'chat_id') required final int chatId,
      @JsonKey(name: 'route_total_mi')
      required final String routeTotalMi}) = _$DispatchModelImpl;

  factory _DispatchModel.fromJson(Map<String, dynamic> json) =
      _$DispatchModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'truck_load_id')
  int get truckLoadId;
  @override
  @JsonKey(name: 'waypoints')
  List<WaypointDetailModel> get waypoints;
  @override
  @JsonKey(name: 'started_moving_timestamp')
  int? get startedMovingTimestamp;
  @override
  @JsonKey(name: 'next_waypoint')
  WaypointDetailModel? get nextWaypoint;
  @override
  @JsonKey(name: 'next_eta_waypoint')
  WaypointDetailModel? get nextEtaWaypoint;
  @override
  @JsonKey(name: 'next_eta_timestamp')
  int? get nextEtaTimestamp;
  @override
  @JsonKey(name: 'is_tonu_declared')
  bool get isTonuDeclared;
  @override
  @JsonKey(name: 'is_finished')
  bool get isFinished;
  @override
  @JsonKey(name: 'temperature_maintain_type')
  String? get temperatureMaintainType;
  @override
  @JsonKey(name: 'temperature_maintain_from')
  int? get temperatureMaintainFrom;
  @override
  @JsonKey(name: 'temperature_maintain_to')
  int? get temperatureMaintainTo;
  @override
  @JsonKey(name: 'cargo_info')
  CargoInfoModel get cargoInfo;
  @override
  @JsonKey(name: 'next_mandatory_check_call_type')
  String? get nextMandatoryCheckCallType;
  @override
  @JsonKey(name: 'chat_id')
  int get chatId;
  @override
  @JsonKey(name: 'route_total_mi')
  String get routeTotalMi;

  /// Create a copy of DispatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DispatchModelImplCopyWith<_$DispatchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
