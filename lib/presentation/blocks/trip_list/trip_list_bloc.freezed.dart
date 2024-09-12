// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, DispatchListModel? trip)
        changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_FetchTrips value) fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripListEventCopyWith<$Res> {
  factory $TripListEventCopyWith(
          TripListEvent value, $Res Function(TripListEvent) then) =
      _$TripListEventCopyWithImpl<$Res, TripListEvent>;
}

/// @nodoc
class _$TripListEventCopyWithImpl<$Res, $Val extends TripListEvent>
    implements $TripListEventCopyWith<$Res> {
  _$TripListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeTabPressedImplCopyWith<$Res> {
  factory _$$ChangeTabPressedImplCopyWith(_$ChangeTabPressedImpl value,
          $Res Function(_$ChangeTabPressedImpl) then) =
      __$$ChangeTabPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TabStatus status, DispatchListModel? trip});

  $DispatchListModelCopyWith<$Res>? get trip;
}

/// @nodoc
class __$$ChangeTabPressedImplCopyWithImpl<$Res>
    extends _$TripListEventCopyWithImpl<$Res, _$ChangeTabPressedImpl>
    implements _$$ChangeTabPressedImplCopyWith<$Res> {
  __$$ChangeTabPressedImplCopyWithImpl(_$ChangeTabPressedImpl _value,
      $Res Function(_$ChangeTabPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? trip = freezed,
  }) {
    return _then(_$ChangeTabPressedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabStatus,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as DispatchListModel?,
    ));
  }

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DispatchListModelCopyWith<$Res>? get trip {
    if (_value.trip == null) {
      return null;
    }

    return $DispatchListModelCopyWith<$Res>(_value.trip!, (value) {
      return _then(_value.copyWith(trip: value));
    });
  }
}

/// @nodoc

class _$ChangeTabPressedImpl implements _ChangeTabPressed {
  const _$ChangeTabPressedImpl({required this.status, this.trip});

  @override
  final TabStatus status;
  @override
  final DispatchListModel? trip;

  @override
  String toString() {
    return 'TripListEvent.changeTab(status: $status, trip: $trip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabPressedImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, trip);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabPressedImplCopyWith<_$ChangeTabPressedImpl> get copyWith =>
      __$$ChangeTabPressedImplCopyWithImpl<_$ChangeTabPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, DispatchListModel? trip)
        changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() fetchTrips,
  }) {
    return changeTab(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
  }) {
    return changeTab?.call(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(status, trip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_FetchTrips value) fetchTrips,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabPressed implements TripListEvent {
  const factory _ChangeTabPressed(
      {required final TabStatus status,
      final DispatchListModel? trip}) = _$ChangeTabPressedImpl;

  TabStatus get status;
  DispatchListModel? get trip;

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTabPressedImplCopyWith<_$ChangeTabPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDateAndTimeImplCopyWith<$Res> {
  factory _$$GetDateAndTimeImplCopyWith(_$GetDateAndTimeImpl value,
          $Res Function(_$GetDateAndTimeImpl) then) =
      __$$GetDateAndTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dateTime});
}

/// @nodoc
class __$$GetDateAndTimeImplCopyWithImpl<$Res>
    extends _$TripListEventCopyWithImpl<$Res, _$GetDateAndTimeImpl>
    implements _$$GetDateAndTimeImplCopyWith<$Res> {
  __$$GetDateAndTimeImplCopyWithImpl(
      _$GetDateAndTimeImpl _value, $Res Function(_$GetDateAndTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
  }) {
    return _then(_$GetDateAndTimeImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDateAndTimeImpl implements _GetDateAndTime {
  const _$GetDateAndTimeImpl({required this.dateTime});

  @override
  final String dateTime;

  @override
  String toString() {
    return 'TripListEvent.getDateAndTime(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDateAndTimeImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDateAndTimeImplCopyWith<_$GetDateAndTimeImpl> get copyWith =>
      __$$GetDateAndTimeImplCopyWithImpl<_$GetDateAndTimeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, DispatchListModel? trip)
        changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() fetchTrips,
  }) {
    return getDateAndTime(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
  }) {
    return getDateAndTime?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) {
    if (getDateAndTime != null) {
      return getDateAndTime(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_FetchTrips value) fetchTrips,
  }) {
    return getDateAndTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
  }) {
    return getDateAndTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) {
    if (getDateAndTime != null) {
      return getDateAndTime(this);
    }
    return orElse();
  }
}

abstract class _GetDateAndTime implements TripListEvent {
  const factory _GetDateAndTime({required final String dateTime}) =
      _$GetDateAndTimeImpl;

  String get dateTime;

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDateAndTimeImplCopyWith<_$GetDateAndTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchTripsImplCopyWith<$Res> {
  factory _$$FetchTripsImplCopyWith(
          _$FetchTripsImpl value, $Res Function(_$FetchTripsImpl) then) =
      __$$FetchTripsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTripsImplCopyWithImpl<$Res>
    extends _$TripListEventCopyWithImpl<$Res, _$FetchTripsImpl>
    implements _$$FetchTripsImplCopyWith<$Res> {
  __$$FetchTripsImplCopyWithImpl(
      _$FetchTripsImpl _value, $Res Function(_$FetchTripsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTripsImpl implements _FetchTrips {
  const _$FetchTripsImpl();

  @override
  String toString() {
    return 'TripListEvent.fetchTrips()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTripsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, DispatchListModel? trip)
        changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() fetchTrips,
  }) {
    return fetchTrips();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
  }) {
    return fetchTrips?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    required TResult orElse(),
  }) {
    if (fetchTrips != null) {
      return fetchTrips();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_FetchTrips value) fetchTrips,
  }) {
    return fetchTrips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
  }) {
    return fetchTrips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    required TResult orElse(),
  }) {
    if (fetchTrips != null) {
      return fetchTrips(this);
    }
    return orElse();
  }
}

abstract class _FetchTrips implements TripListEvent {
  const factory _FetchTrips() = _$FetchTripsImpl;
}

/// @nodoc
mixin _$TripListState {
  TripStatus get status => throw _privateConstructorUsedError;
  TabStatus get tabStatus =>
      throw _privateConstructorUsedError; // String? errorMessage,
// DispatchListModel? trip,
  String? get dateTime =>
      throw _privateConstructorUsedError; // File? selectedFile,
// @Default(false) bool isFileLoading,
  List<DispatchListModel> get trips => throw _privateConstructorUsedError;

  /// Create a copy of TripListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripListStateCopyWith<TripListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripListStateCopyWith<$Res> {
  factory $TripListStateCopyWith(
          TripListState value, $Res Function(TripListState) then) =
      _$TripListStateCopyWithImpl<$Res, TripListState>;
  @useResult
  $Res call(
      {TripStatus status,
      TabStatus tabStatus,
      String? dateTime,
      List<DispatchListModel> trips});
}

/// @nodoc
class _$TripListStateCopyWithImpl<$Res, $Val extends TripListState>
    implements $TripListStateCopyWith<$Res> {
  _$TripListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabStatus = null,
    Object? dateTime = freezed,
    Object? trips = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStatus,
      tabStatus: null == tabStatus
          ? _value.tabStatus
          : tabStatus // ignore: cast_nullable_to_non_nullable
              as TabStatus,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      trips: null == trips
          ? _value.trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<DispatchListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TripStateImplCopyWith<$Res>
    implements $TripListStateCopyWith<$Res> {
  factory _$$TripStateImplCopyWith(
          _$TripStateImpl value, $Res Function(_$TripStateImpl) then) =
      __$$TripStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TripStatus status,
      TabStatus tabStatus,
      String? dateTime,
      List<DispatchListModel> trips});
}

/// @nodoc
class __$$TripStateImplCopyWithImpl<$Res>
    extends _$TripListStateCopyWithImpl<$Res, _$TripStateImpl>
    implements _$$TripStateImplCopyWith<$Res> {
  __$$TripStateImplCopyWithImpl(
      _$TripStateImpl _value, $Res Function(_$TripStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabStatus = null,
    Object? dateTime = freezed,
    Object? trips = null,
  }) {
    return _then(_$TripStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TripStatus,
      tabStatus: null == tabStatus
          ? _value.tabStatus
          : tabStatus // ignore: cast_nullable_to_non_nullable
              as TabStatus,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      trips: null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<DispatchListModel>,
    ));
  }
}

/// @nodoc

class _$TripStateImpl implements _TripState {
  const _$TripStateImpl(
      {required this.status,
      this.tabStatus = TabStatus.newTrips,
      this.dateTime,
      final List<DispatchListModel> trips = const []})
      : _trips = trips;

  @override
  final TripStatus status;
  @override
  @JsonKey()
  final TabStatus tabStatus;
// String? errorMessage,
// DispatchListModel? trip,
  @override
  final String? dateTime;
// File? selectedFile,
// @Default(false) bool isFileLoading,
  final List<DispatchListModel> _trips;
// File? selectedFile,
// @Default(false) bool isFileLoading,
  @override
  @JsonKey()
  List<DispatchListModel> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  String toString() {
    return 'TripListState(status: $status, tabStatus: $tabStatus, dateTime: $dateTime, trips: $trips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tabStatus, tabStatus) ||
                other.tabStatus == tabStatus) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, tabStatus, dateTime,
      const DeepCollectionEquality().hash(_trips));

  /// Create a copy of TripListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      __$$TripStateImplCopyWithImpl<_$TripStateImpl>(this, _$identity);
}

abstract class _TripState implements TripListState {
  const factory _TripState(
      {required final TripStatus status,
      final TabStatus tabStatus,
      final String? dateTime,
      final List<DispatchListModel> trips}) = _$TripStateImpl;

  @override
  TripStatus get status;
  @override
  TabStatus get tabStatus; // String? errorMessage,
// DispatchListModel? trip,
  @override
  String? get dateTime; // File? selectedFile,
// @Default(false) bool isFileLoading,
  @override
  List<DispatchListModel> get trips;

  /// Create a copy of TripListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
