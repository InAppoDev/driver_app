// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_trip_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActiveTripEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String dateTime) getDateAndTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String dateTime)? getDateAndTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String dateTime)? getDateAndTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(GetDateAndTime value) getDateAndTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTripEventCopyWith<$Res> {
  factory $ActiveTripEventCopyWith(
          ActiveTripEvent value, $Res Function(ActiveTripEvent) then) =
      _$ActiveTripEventCopyWithImpl<$Res, ActiveTripEvent>;
}

/// @nodoc
class _$ActiveTripEventCopyWithImpl<$Res, $Val extends ActiveTripEvent>
    implements $ActiveTripEventCopyWith<$Res> {
  _$ActiveTripEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$ActiveTripEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'ActiveTripEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String dateTime) getDateAndTime,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String dateTime)? getDateAndTime,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String dateTime)? getDateAndTime,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(GetDateAndTime value) getDateAndTime,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements ActiveTripEvent {
  const factory Initialize() = _$InitializeImpl;
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
    extends _$ActiveTripEventCopyWithImpl<$Res, _$GetDateAndTimeImpl>
    implements _$$GetDateAndTimeImplCopyWith<$Res> {
  __$$GetDateAndTimeImplCopyWithImpl(
      _$GetDateAndTimeImpl _value, $Res Function(_$GetDateAndTimeImpl) _then)
      : super(_value, _then);

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

class _$GetDateAndTimeImpl implements GetDateAndTime {
  const _$GetDateAndTimeImpl({required this.dateTime});

  @override
  final String dateTime;

  @override
  String toString() {
    return 'ActiveTripEvent.getDateAndTime(dateTime: $dateTime)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDateAndTimeImplCopyWith<_$GetDateAndTimeImpl> get copyWith =>
      __$$GetDateAndTimeImplCopyWithImpl<_$GetDateAndTimeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String dateTime) getDateAndTime,
  }) {
    return getDateAndTime(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String dateTime)? getDateAndTime,
  }) {
    return getDateAndTime?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String dateTime)? getDateAndTime,
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
    required TResult Function(Initialize value) initialize,
    required TResult Function(GetDateAndTime value) getDateAndTime,
  }) {
    return getDateAndTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(GetDateAndTime value)? getDateAndTime,
  }) {
    return getDateAndTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(GetDateAndTime value)? getDateAndTime,
    required TResult orElse(),
  }) {
    if (getDateAndTime != null) {
      return getDateAndTime(this);
    }
    return orElse();
  }
}

abstract class GetDateAndTime implements ActiveTripEvent {
  const factory GetDateAndTime({required final String dateTime}) =
      _$GetDateAndTimeImpl;

  String get dateTime;
  @JsonKey(ignore: true)
  _$$GetDateAndTimeImplCopyWith<_$GetDateAndTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveTripState {
  ActiveTripStatus get status => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveTripStateCopyWith<ActiveTripState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTripStateCopyWith<$Res> {
  factory $ActiveTripStateCopyWith(
          ActiveTripState value, $Res Function(ActiveTripState) then) =
      _$ActiveTripStateCopyWithImpl<$Res, ActiveTripState>;
  @useResult
  $Res call({ActiveTripStatus status, String? dateTime, String? errorMessage});
}

/// @nodoc
class _$ActiveTripStateCopyWithImpl<$Res, $Val extends ActiveTripState>
    implements $ActiveTripStateCopyWith<$Res> {
  _$ActiveTripStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dateTime = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActiveTripStatus,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveTripStateImplCopyWith<$Res>
    implements $ActiveTripStateCopyWith<$Res> {
  factory _$$ActiveTripStateImplCopyWith(_$ActiveTripStateImpl value,
          $Res Function(_$ActiveTripStateImpl) then) =
      __$$ActiveTripStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActiveTripStatus status, String? dateTime, String? errorMessage});
}

/// @nodoc
class __$$ActiveTripStateImplCopyWithImpl<$Res>
    extends _$ActiveTripStateCopyWithImpl<$Res, _$ActiveTripStateImpl>
    implements _$$ActiveTripStateImplCopyWith<$Res> {
  __$$ActiveTripStateImplCopyWithImpl(
      _$ActiveTripStateImpl _value, $Res Function(_$ActiveTripStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dateTime = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ActiveTripStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActiveTripStatus,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ActiveTripStateImpl implements _ActiveTripState {
  const _$ActiveTripStateImpl(
      {required this.status, this.dateTime, this.errorMessage});

  @override
  final ActiveTripStatus status;
  @override
  final String? dateTime;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ActiveTripState(status: $status, dateTime: $dateTime, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveTripStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, dateTime, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveTripStateImplCopyWith<_$ActiveTripStateImpl> get copyWith =>
      __$$ActiveTripStateImplCopyWithImpl<_$ActiveTripStateImpl>(
          this, _$identity);
}

abstract class _ActiveTripState implements ActiveTripState {
  const factory _ActiveTripState(
      {required final ActiveTripStatus status,
      final String? dateTime,
      final String? errorMessage}) = _$ActiveTripStateImpl;

  @override
  ActiveTripStatus get status;
  @override
  String? get dateTime;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ActiveTripStateImplCopyWith<_$ActiveTripStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
