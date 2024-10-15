// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispatch_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DispatchListModel _$DispatchListModelFromJson(Map<String, dynamic> json) {
  return _DispatchListModel.fromJson(json);
}

/// @nodoc
mixin _$DispatchListModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'route_total_mi')
  String get routeTotalMi => throw _privateConstructorUsedError;
  @JsonKey(name: 'waypoints')
  List<WaypointDetailModel> get waypoints => throw _privateConstructorUsedError;

  /// Serializes this DispatchListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DispatchListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DispatchListModelCopyWith<DispatchListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DispatchListModelCopyWith<$Res> {
  factory $DispatchListModelCopyWith(
          DispatchListModel value, $Res Function(DispatchListModel) then) =
      _$DispatchListModelCopyWithImpl<$Res, DispatchListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'route_total_mi') String routeTotalMi,
      @JsonKey(name: 'waypoints') List<WaypointDetailModel> waypoints});
}

/// @nodoc
class _$DispatchListModelCopyWithImpl<$Res, $Val extends DispatchListModel>
    implements $DispatchListModelCopyWith<$Res> {
  _$DispatchListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DispatchListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeTotalMi = null,
    Object? waypoints = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      routeTotalMi: null == routeTotalMi
          ? _value.routeTotalMi
          : routeTotalMi // ignore: cast_nullable_to_non_nullable
              as String,
      waypoints: null == waypoints
          ? _value.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<WaypointDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DispatchListModelImplCopyWith<$Res>
    implements $DispatchListModelCopyWith<$Res> {
  factory _$$DispatchListModelImplCopyWith(_$DispatchListModelImpl value,
          $Res Function(_$DispatchListModelImpl) then) =
      __$$DispatchListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'route_total_mi') String routeTotalMi,
      @JsonKey(name: 'waypoints') List<WaypointDetailModel> waypoints});
}

/// @nodoc
class __$$DispatchListModelImplCopyWithImpl<$Res>
    extends _$DispatchListModelCopyWithImpl<$Res, _$DispatchListModelImpl>
    implements _$$DispatchListModelImplCopyWith<$Res> {
  __$$DispatchListModelImplCopyWithImpl(_$DispatchListModelImpl _value,
      $Res Function(_$DispatchListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DispatchListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? routeTotalMi = null,
    Object? waypoints = null,
  }) {
    return _then(_$DispatchListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      routeTotalMi: null == routeTotalMi
          ? _value.routeTotalMi
          : routeTotalMi // ignore: cast_nullable_to_non_nullable
              as String,
      waypoints: null == waypoints
          ? _value._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<WaypointDetailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DispatchListModelImpl implements _DispatchListModel {
  const _$DispatchListModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'route_total_mi') required this.routeTotalMi,
      @JsonKey(name: 'waypoints')
      required final List<WaypointDetailModel> waypoints})
      : _waypoints = waypoints;

  factory _$DispatchListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DispatchListModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'route_total_mi')
  final String routeTotalMi;
  final List<WaypointDetailModel> _waypoints;
  @override
  @JsonKey(name: 'waypoints')
  List<WaypointDetailModel> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  @override
  String toString() {
    return 'DispatchListModel(id: $id, routeTotalMi: $routeTotalMi, waypoints: $waypoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DispatchListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.routeTotalMi, routeTotalMi) ||
                other.routeTotalMi == routeTotalMi) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, routeTotalMi,
      const DeepCollectionEquality().hash(_waypoints));

  /// Create a copy of DispatchListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DispatchListModelImplCopyWith<_$DispatchListModelImpl> get copyWith =>
      __$$DispatchListModelImplCopyWithImpl<_$DispatchListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DispatchListModelImplToJson(
      this,
    );
  }
}

abstract class _DispatchListModel implements DispatchListModel {
  const factory _DispatchListModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'route_total_mi') required final String routeTotalMi,
          @JsonKey(name: 'waypoints')
          required final List<WaypointDetailModel> waypoints}) =
      _$DispatchListModelImpl;

  factory _DispatchListModel.fromJson(Map<String, dynamic> json) =
      _$DispatchListModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'route_total_mi')
  String get routeTotalMi;
  @override
  @JsonKey(name: 'waypoints')
  List<WaypointDetailModel> get waypoints;

  /// Create a copy of DispatchListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DispatchListModelImplCopyWith<_$DispatchListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
