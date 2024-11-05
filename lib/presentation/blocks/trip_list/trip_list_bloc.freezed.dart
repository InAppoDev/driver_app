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
    required TResult Function() fetchHistoryTrips,
    required TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)
        navigateToConfirmTripFromPushNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
    TResult? Function()? fetchHistoryTrips,
    TResult? Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    TResult Function()? fetchHistoryTrips,
    TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_FetchTrips value) fetchTrips,
    required TResult Function(_FetchHistoryTrips value) fetchHistoryTrips,
    required TResult Function(_NavigateToConfirmTripFromPushNotification value)
        navigateToConfirmTripFromPushNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
    TResult? Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult? Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    TResult Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
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
    required TResult Function() fetchHistoryTrips,
    required TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)
        navigateToConfirmTripFromPushNotification,
  }) {
    return changeTab(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
    TResult? Function()? fetchHistoryTrips,
    TResult? Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return changeTab?.call(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    TResult Function()? fetchHistoryTrips,
    TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
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
    required TResult Function(_FetchHistoryTrips value) fetchHistoryTrips,
    required TResult Function(_NavigateToConfirmTripFromPushNotification value)
        navigateToConfirmTripFromPushNotification,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
    TResult? Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult? Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    TResult Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
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
    required TResult Function() fetchHistoryTrips,
    required TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)
        navigateToConfirmTripFromPushNotification,
  }) {
    return getDateAndTime(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
    TResult? Function()? fetchHistoryTrips,
    TResult? Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return getDateAndTime?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    TResult Function()? fetchHistoryTrips,
    TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
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
    required TResult Function(_FetchHistoryTrips value) fetchHistoryTrips,
    required TResult Function(_NavigateToConfirmTripFromPushNotification value)
        navigateToConfirmTripFromPushNotification,
  }) {
    return getDateAndTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
    TResult? Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult? Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return getDateAndTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    TResult Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
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
    required TResult Function() fetchHistoryTrips,
    required TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchTrips();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
    TResult? Function()? fetchHistoryTrips,
    TResult? Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchTrips?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    TResult Function()? fetchHistoryTrips,
    TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
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
    required TResult Function(_FetchHistoryTrips value) fetchHistoryTrips,
    required TResult Function(_NavigateToConfirmTripFromPushNotification value)
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchTrips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
    TResult? Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult? Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchTrips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    TResult Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
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
abstract class _$$FetchHistoryTripsImplCopyWith<$Res> {
  factory _$$FetchHistoryTripsImplCopyWith(_$FetchHistoryTripsImpl value,
          $Res Function(_$FetchHistoryTripsImpl) then) =
      __$$FetchHistoryTripsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchHistoryTripsImplCopyWithImpl<$Res>
    extends _$TripListEventCopyWithImpl<$Res, _$FetchHistoryTripsImpl>
    implements _$$FetchHistoryTripsImplCopyWith<$Res> {
  __$$FetchHistoryTripsImplCopyWithImpl(_$FetchHistoryTripsImpl _value,
      $Res Function(_$FetchHistoryTripsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchHistoryTripsImpl implements _FetchHistoryTrips {
  const _$FetchHistoryTripsImpl();

  @override
  String toString() {
    return 'TripListEvent.fetchHistoryTrips()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchHistoryTripsImpl);
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
    required TResult Function() fetchHistoryTrips,
    required TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchHistoryTrips();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
    TResult? Function()? fetchHistoryTrips,
    TResult? Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchHistoryTrips?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    TResult Function()? fetchHistoryTrips,
    TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
    required TResult orElse(),
  }) {
    if (fetchHistoryTrips != null) {
      return fetchHistoryTrips();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_FetchTrips value) fetchTrips,
    required TResult Function(_FetchHistoryTrips value) fetchHistoryTrips,
    required TResult Function(_NavigateToConfirmTripFromPushNotification value)
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchHistoryTrips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
    TResult? Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult? Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return fetchHistoryTrips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    TResult Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
    required TResult orElse(),
  }) {
    if (fetchHistoryTrips != null) {
      return fetchHistoryTrips(this);
    }
    return orElse();
  }
}

abstract class _FetchHistoryTrips implements TripListEvent {
  const factory _FetchHistoryTrips() = _$FetchHistoryTripsImpl;
}

/// @nodoc
abstract class _$$NavigateToConfirmTripFromPushNotificationImplCopyWith<$Res> {
  factory _$$NavigateToConfirmTripFromPushNotificationImplCopyWith(
          _$NavigateToConfirmTripFromPushNotificationImpl value,
          $Res Function(_$NavigateToConfirmTripFromPushNotificationImpl) then) =
      __$$NavigateToConfirmTripFromPushNotificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DispatchListModel> trips,
      int tripId,
      dynamic Function(DispatchListModel) onNavigate});
}

/// @nodoc
class __$$NavigateToConfirmTripFromPushNotificationImplCopyWithImpl<$Res>
    extends _$TripListEventCopyWithImpl<$Res,
        _$NavigateToConfirmTripFromPushNotificationImpl>
    implements _$$NavigateToConfirmTripFromPushNotificationImplCopyWith<$Res> {
  __$$NavigateToConfirmTripFromPushNotificationImplCopyWithImpl(
      _$NavigateToConfirmTripFromPushNotificationImpl _value,
      $Res Function(_$NavigateToConfirmTripFromPushNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trips = null,
    Object? tripId = null,
    Object? onNavigate = null,
  }) {
    return _then(_$NavigateToConfirmTripFromPushNotificationImpl(
      null == trips
          ? _value._trips
          : trips // ignore: cast_nullable_to_non_nullable
              as List<DispatchListModel>,
      null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      null == onNavigate
          ? _value.onNavigate
          : onNavigate // ignore: cast_nullable_to_non_nullable
              as dynamic Function(DispatchListModel),
    ));
  }
}

/// @nodoc

class _$NavigateToConfirmTripFromPushNotificationImpl
    implements _NavigateToConfirmTripFromPushNotification {
  const _$NavigateToConfirmTripFromPushNotificationImpl(
      final List<DispatchListModel> trips, this.tripId, this.onNavigate)
      : _trips = trips;

  final List<DispatchListModel> _trips;
  @override
  List<DispatchListModel> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  @override
  final int tripId;
  @override
  final dynamic Function(DispatchListModel) onNavigate;

  @override
  String toString() {
    return 'TripListEvent.navigateToConfirmTripFromPushNotification(trips: $trips, tripId: $tripId, onNavigate: $onNavigate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToConfirmTripFromPushNotificationImpl &&
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.onNavigate, onNavigate) ||
                other.onNavigate == onNavigate));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_trips), tripId, onNavigate);

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToConfirmTripFromPushNotificationImplCopyWith<
          _$NavigateToConfirmTripFromPushNotificationImpl>
      get copyWith =>
          __$$NavigateToConfirmTripFromPushNotificationImplCopyWithImpl<
                  _$NavigateToConfirmTripFromPushNotificationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, DispatchListModel? trip)
        changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() fetchTrips,
    required TResult Function() fetchHistoryTrips,
    required TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)
        navigateToConfirmTripFromPushNotification,
  }) {
    return navigateToConfirmTripFromPushNotification(trips, tripId, onNavigate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? fetchTrips,
    TResult? Function()? fetchHistoryTrips,
    TResult? Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return navigateToConfirmTripFromPushNotification?.call(
        trips, tripId, onNavigate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, DispatchListModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? fetchTrips,
    TResult Function()? fetchHistoryTrips,
    TResult Function(List<DispatchListModel> trips, int tripId,
            dynamic Function(DispatchListModel) onNavigate)?
        navigateToConfirmTripFromPushNotification,
    required TResult orElse(),
  }) {
    if (navigateToConfirmTripFromPushNotification != null) {
      return navigateToConfirmTripFromPushNotification(
          trips, tripId, onNavigate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_FetchTrips value) fetchTrips,
    required TResult Function(_FetchHistoryTrips value) fetchHistoryTrips,
    required TResult Function(_NavigateToConfirmTripFromPushNotification value)
        navigateToConfirmTripFromPushNotification,
  }) {
    return navigateToConfirmTripFromPushNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_FetchTrips value)? fetchTrips,
    TResult? Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult? Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
  }) {
    return navigateToConfirmTripFromPushNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_FetchTrips value)? fetchTrips,
    TResult Function(_FetchHistoryTrips value)? fetchHistoryTrips,
    TResult Function(_NavigateToConfirmTripFromPushNotification value)?
        navigateToConfirmTripFromPushNotification,
    required TResult orElse(),
  }) {
    if (navigateToConfirmTripFromPushNotification != null) {
      return navigateToConfirmTripFromPushNotification(this);
    }
    return orElse();
  }
}

abstract class _NavigateToConfirmTripFromPushNotification
    implements TripListEvent {
  const factory _NavigateToConfirmTripFromPushNotification(
          final List<DispatchListModel> trips,
          final int tripId,
          final dynamic Function(DispatchListModel) onNavigate) =
      _$NavigateToConfirmTripFromPushNotificationImpl;

  List<DispatchListModel> get trips;
  int get tripId;
  dynamic Function(DispatchListModel) get onNavigate;

  /// Create a copy of TripListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToConfirmTripFromPushNotificationImplCopyWith<
          _$NavigateToConfirmTripFromPushNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripListState {
  TripStatus get status => throw _privateConstructorUsedError;
  TabStatus get tabStatus => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  List<DispatchListModel> get trips => throw _privateConstructorUsedError;
  List<DispatchListModel> get historyTrips =>
      throw _privateConstructorUsedError;

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
      List<DispatchListModel> trips,
      List<DispatchListModel> historyTrips});
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
    Object? historyTrips = null,
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
      historyTrips: null == historyTrips
          ? _value.historyTrips
          : historyTrips // ignore: cast_nullable_to_non_nullable
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
      List<DispatchListModel> trips,
      List<DispatchListModel> historyTrips});
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
    Object? historyTrips = null,
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
      historyTrips: null == historyTrips
          ? _value._historyTrips
          : historyTrips // ignore: cast_nullable_to_non_nullable
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
      final List<DispatchListModel> trips = const [],
      final List<DispatchListModel> historyTrips = const []})
      : _trips = trips,
        _historyTrips = historyTrips;

  @override
  final TripStatus status;
  @override
  @JsonKey()
  final TabStatus tabStatus;
  @override
  final String? dateTime;
  final List<DispatchListModel> _trips;
  @override
  @JsonKey()
  List<DispatchListModel> get trips {
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trips);
  }

  final List<DispatchListModel> _historyTrips;
  @override
  @JsonKey()
  List<DispatchListModel> get historyTrips {
    if (_historyTrips is EqualUnmodifiableListView) return _historyTrips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyTrips);
  }

  @override
  String toString() {
    return 'TripListState(status: $status, tabStatus: $tabStatus, dateTime: $dateTime, trips: $trips, historyTrips: $historyTrips)';
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
            const DeepCollectionEquality().equals(other._trips, _trips) &&
            const DeepCollectionEquality()
                .equals(other._historyTrips, _historyTrips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      tabStatus,
      dateTime,
      const DeepCollectionEquality().hash(_trips),
      const DeepCollectionEquality().hash(_historyTrips));

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
      final List<DispatchListModel> trips,
      final List<DispatchListModel> historyTrips}) = _$TripStateImpl;

  @override
  TripStatus get status;
  @override
  TabStatus get tabStatus;
  @override
  String? get dateTime;
  @override
  List<DispatchListModel> get trips;
  @override
  List<DispatchListModel> get historyTrips;

  /// Create a copy of TripListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
