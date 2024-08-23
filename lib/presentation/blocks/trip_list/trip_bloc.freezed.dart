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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status)? changeTab,
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

  @JsonKey(ignore: true)
  $TripEventCopyWith<TripEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEventCopyWith<$Res> {
  factory $TripEventCopyWith(TripEvent value, $Res Function(TripEvent) then) =
      _$TripEventCopyWithImpl<$Res, TripEvent>;
  @useResult
  $Res call({TabStatus status});
}

/// @nodoc
class _$TripEventCopyWithImpl<$Res, $Val extends TripEvent>
    implements $TripEventCopyWith<$Res> {
  _$TripEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabStatus,
    ) as $Val);
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
  $Res call({TabStatus status});
}

/// @nodoc
class __$$ChangeTabPressedImplCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$ChangeTabPressedImpl>
    implements _$$ChangeTabPressedImplCopyWith<$Res> {
  __$$ChangeTabPressedImplCopyWithImpl(_$ChangeTabPressedImpl _value,
      $Res Function(_$ChangeTabPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ChangeTabPressedImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TabStatus,
    ));
  }
}

/// @nodoc

class _$ChangeTabPressedImpl implements _ChangeTabPressed {
  const _$ChangeTabPressedImpl({required this.status});

  @override
  final TabStatus status;

  @override
  String toString() {
    return 'TripEvent.changeTab(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabPressedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabPressedImplCopyWith<_$ChangeTabPressedImpl> get copyWith =>
      __$$ChangeTabPressedImplCopyWithImpl<_$ChangeTabPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status) changeTab,
  }) {
    return changeTab(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status)? changeTab,
  }) {
    return changeTab?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(status);
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
  const factory _ChangeTabPressed({required final TabStatus status}) =
      _$ChangeTabPressedImpl;

  @override
  TabStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ChangeTabPressedImplCopyWith<_$ChangeTabPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TripState {
  TripStatus get status => throw _privateConstructorUsedError;
  TabStatus get tabStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TripStateCopyWith<TripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripStateCopyWith<$Res> {
  factory $TripStateCopyWith(TripState value, $Res Function(TripState) then) =
      _$TripStateCopyWithImpl<$Res, TripState>;
  @useResult
  $Res call({TripStatus status, TabStatus tabStatus, String? errorMessage});
}

/// @nodoc
class _$TripStateCopyWithImpl<$Res, $Val extends TripState>
    implements $TripStateCopyWith<$Res> {
  _$TripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabStatus = null,
    Object? errorMessage = freezed,
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
    ) as $Val);
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
  $Res call({TripStatus status, TabStatus tabStatus, String? errorMessage});
}

/// @nodoc
class __$$TripStateImplCopyWithImpl<$Res>
    extends _$TripStateCopyWithImpl<$Res, _$TripStateImpl>
    implements _$$TripStateImplCopyWith<$Res> {
  __$$TripStateImplCopyWithImpl(
      _$TripStateImpl _value, $Res Function(_$TripStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tabStatus = null,
    Object? errorMessage = freezed,
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
    ));
  }
}

/// @nodoc

class _$TripStateImpl implements _TripState {
  const _$TripStateImpl(
      {required this.status,
      this.tabStatus = TabStatus.newTrips,
      this.errorMessage});

  @override
  final TripStatus status;
  @override
  @JsonKey()
  final TabStatus tabStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TripState(status: $status, tabStatus: $tabStatus, errorMessage: $errorMessage)';
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
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, tabStatus, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      __$$TripStateImplCopyWithImpl<_$TripStateImpl>(this, _$identity);
}

abstract class _TripState implements TripState {
  const factory _TripState(
      {required final TripStatus status,
      final TabStatus tabStatus,
      final String? errorMessage}) = _$TripStateImpl;

  @override
  TripStatus get status;
  @override
  TabStatus get tabStatus;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
