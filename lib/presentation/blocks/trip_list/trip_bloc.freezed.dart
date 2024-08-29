// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TripEvent {
  TabStatus get status => throw _privateConstructorUsedError;
  TripModel? get trip => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripEventCopyWith<TripEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEventCopyWith<$Res> {
  factory $TripEventCopyWith(TripEvent value, $Res Function(TripEvent) then) =
      _$TripEventCopyWithImpl<$Res, TripEvent>;
  @useResult
  $Res call({TabStatus status, TripModel? trip});

  $TripModelCopyWith<$Res>? get trip;
}

/// @nodoc
class _$TripEventCopyWithImpl<$Res, $Val extends TripEvent>
    implements $TripEventCopyWith<$Res> {
  _$TripEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? trip = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabStatus,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as TripModel?,
    ) as $Val);
  }

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripModelCopyWith<$Res>? get trip {
    if (_value.trip == null) {
      return null;
    }

    return $TripModelCopyWith<$Res>(_value.trip!, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeTabPressedImplCopyWith<$Res>
    implements $TripEventCopyWith<$Res> {
  factory _$$ChangeTabPressedImplCopyWith(_$ChangeTabPressedImpl value,
          $Res Function(_$ChangeTabPressedImpl) then) =
      __$$ChangeTabPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TabStatus status, TripModel? trip});

  @override
  $TripModelCopyWith<$Res>? get trip;
}

/// @nodoc
class __$$ChangeTabPressedImplCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$ChangeTabPressedImpl>
    implements _$$ChangeTabPressedImplCopyWith<$Res> {
  __$$ChangeTabPressedImplCopyWithImpl(_$ChangeTabPressedImpl _value,
      $Res Function(_$ChangeTabPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripEvent
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
              as TripModel?,
    ));
  }
}

/// @nodoc

class _$ChangeTabPressedImpl implements _ChangeTabPressed {
  const _$ChangeTabPressedImpl({required this.status, this.trip});

  @override
  final TabStatus status;
  @override
  final TripModel? trip;

  @override
  String toString() {
    return 'TripEvent.changeTab(status: $status, trip: $trip)';
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

  /// Create a copy of TripEvent
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
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
  }) {
    return changeTab(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
  }) {
    return changeTab?.call(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
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
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _ChangeTabPressed implements TripEvent {
  const factory _ChangeTabPressed(
      {required final TabStatus status,
      final TripModel? trip}) = _$ChangeTabPressedImpl;

  @override
  TabStatus get status;
  @override
  TripModel? get trip;

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTabPressedImplCopyWith<_$ChangeTabPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripState {
  TripStatus get status => throw _privateConstructorUsedError;
  TabStatus get tabStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  TripModel? get trip => throw _privateConstructorUsedError;

  /// Create a copy of TripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TripStateCopyWith<TripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStateCopyWith<$Res> {
  factory $TripStateCopyWith(TripState value, $Res Function(TripState) then) =
      _$TripStateCopyWithImpl<$Res, TripState>;
  @useResult
  $Res call(
      {TripStatus status,
      TabStatus tabStatus,
      String? errorMessage,
      TripModel? trip});

  $TripModelCopyWith<$Res>? get trip;
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res, $Val extends TripState>
    implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabStatus = null,
    Object? errorMessage = freezed,
    Object? trip = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as TripModel?,
    ) as $Val);
  }

  /// Create a copy of TripState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripModelCopyWith<$Res>? get trip {
    if (_value.trip == null) {
      return null;
    }

    return $TripModelCopyWith<$Res>(_value.trip!, (value) {
      return _then(_value.copyWith(trip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TripStateImplCopyWith<$Res>
    implements $TripStateCopyWith<$Res> {
  factory _$$TripStateImplCopyWith(
          _$TripStateImpl value, $Res Function(_$TripStateImpl) then) =
      __$$TripStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TripStatus status,
      TabStatus tabStatus,
      String? errorMessage,
      TripModel? trip});

  @override
  $TripModelCopyWith<$Res>? get trip;
}

/// @nodoc
class __$$TripStateImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateImpl>
    implements _$$TripStateImplCopyWith<$Res> {
  __$$TripStateImplCopyWithImpl(
      _$TripStateImpl _value, $Res Function(_$TripStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabStatus = null,
    Object? errorMessage = freezed,
    Object? trip = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      trip: freezed == trip
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as TripModel?,
    ));
  }
}

/// @nodoc

class _$TripStateImpl implements _TripState {
  const _$TripStateImpl(
      {required this.status,
      this.tabStatus = TabStatus.newTrips,
      this.errorMessage,
      this.trip});

  @override
  final TripStatus status;
  @override
  @JsonKey()
  final TabStatus tabStatus;
  @override
  final String? errorMessage;
  @override
  final TripModel? trip;

  @override
  String toString() {
    return 'TripState(status: $status, tabStatus: $tabStatus, errorMessage: $errorMessage, trip: $trip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TripStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tabStatus, tabStatus) ||
                other.tabStatus == tabStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.trip, trip) || other.trip == trip));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, tabStatus, errorMessage, trip);

  /// Create a copy of TripState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      __$$TripStateImplCopyWithImpl<_$TripStateImpl>(this, _$identity);
}

abstract class _TripState implements TripState {
  const factory _TripState(
      {required final TripStatus status,
      final TabStatus tabStatus,
      final String? errorMessage,
      final TripModel? trip}) = _$TripStateImpl;

  @override
  TripStatus get status;
  @override
  TabStatus get tabStatus;
  @override
  String? get errorMessage;
  @override
  TripModel? get trip;

  /// Create a copy of TripState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
