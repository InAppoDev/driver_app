// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            int? etaTimestamp, String? comment, int tripId, String type)
        sendUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            int? etaTimestamp, String? comment, int tripId, String type)?
        sendUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            int? etaTimestamp, String? comment, int tripId, String type)?
        sendUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SendUpdateEvent value) sendUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SendUpdateEvent value)? sendUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SendUpdateEvent value)? sendUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateEventCopyWith<$Res> {
  factory $UpdateEventCopyWith(
          UpdateEvent value, $Res Function(UpdateEvent) then) =
      _$UpdateEventCopyWithImpl<$Res, UpdateEvent>;
}

/// @nodoc
class _$UpdateEventCopyWithImpl<$Res, $Val extends UpdateEvent>
    implements $UpdateEventCopyWith<$Res> {
  _$UpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'UpdateEvent.initialize()';
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
    required TResult Function(
            int? etaTimestamp, String? comment, int tripId, String type)
        sendUpdate,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            int? etaTimestamp, String? comment, int tripId, String type)?
        sendUpdate,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            int? etaTimestamp, String? comment, int tripId, String type)?
        sendUpdate,
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
    required TResult Function(SendUpdateEvent value) sendUpdate,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SendUpdateEvent value)? sendUpdate,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SendUpdateEvent value)? sendUpdate,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements UpdateEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$SendUpdateEventImplCopyWith<$Res> {
  factory _$$SendUpdateEventImplCopyWith(_$SendUpdateEventImpl value,
          $Res Function(_$SendUpdateEventImpl) then) =
      __$$SendUpdateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? etaTimestamp, String? comment, int tripId, String type});
}

/// @nodoc
class __$$SendUpdateEventImplCopyWithImpl<$Res>
    extends _$UpdateEventCopyWithImpl<$Res, _$SendUpdateEventImpl>
    implements _$$SendUpdateEventImplCopyWith<$Res> {
  __$$SendUpdateEventImplCopyWithImpl(
      _$SendUpdateEventImpl _value, $Res Function(_$SendUpdateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etaTimestamp = freezed,
    Object? comment = freezed,
    Object? tripId = null,
    Object? type = null,
  }) {
    return _then(_$SendUpdateEventImpl(
      etaTimestamp: freezed == etaTimestamp
          ? _value.etaTimestamp
          : etaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendUpdateEventImpl implements SendUpdateEvent {
  const _$SendUpdateEventImpl(
      {this.etaTimestamp,
      this.comment,
      required this.tripId,
      required this.type});

  @override
  final int? etaTimestamp;
  @override
  final String? comment;
  @override
  final int tripId;
  @override
  final String type;

  @override
  String toString() {
    return 'UpdateEvent.sendUpdate(etaTimestamp: $etaTimestamp, comment: $comment, tripId: $tripId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendUpdateEventImpl &&
            (identical(other.etaTimestamp, etaTimestamp) ||
                other.etaTimestamp == etaTimestamp) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, etaTimestamp, comment, tripId, type);

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendUpdateEventImplCopyWith<_$SendUpdateEventImpl> get copyWith =>
      __$$SendUpdateEventImplCopyWithImpl<_$SendUpdateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(
            int? etaTimestamp, String? comment, int tripId, String type)
        sendUpdate,
  }) {
    return sendUpdate(etaTimestamp, comment, tripId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(
            int? etaTimestamp, String? comment, int tripId, String type)?
        sendUpdate,
  }) {
    return sendUpdate?.call(etaTimestamp, comment, tripId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(
            int? etaTimestamp, String? comment, int tripId, String type)?
        sendUpdate,
    required TResult orElse(),
  }) {
    if (sendUpdate != null) {
      return sendUpdate(etaTimestamp, comment, tripId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SendUpdateEvent value) sendUpdate,
  }) {
    return sendUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SendUpdateEvent value)? sendUpdate,
  }) {
    return sendUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SendUpdateEvent value)? sendUpdate,
    required TResult orElse(),
  }) {
    if (sendUpdate != null) {
      return sendUpdate(this);
    }
    return orElse();
  }
}

abstract class SendUpdateEvent implements UpdateEvent {
  const factory SendUpdateEvent(
      {final int? etaTimestamp,
      final String? comment,
      required final int tripId,
      required final String type}) = _$SendUpdateEventImpl;

  int? get etaTimestamp;
  String? get comment;
  int get tripId;
  String get type;

  /// Create a copy of UpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendUpdateEventImplCopyWith<_$SendUpdateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateState {
  UpdateStatus get status => throw _privateConstructorUsedError;
  int? get etaTimestamp => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  int get tripId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStateCopyWith<UpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStateCopyWith<$Res> {
  factory $UpdateStateCopyWith(
          UpdateState value, $Res Function(UpdateState) then) =
      _$UpdateStateCopyWithImpl<$Res, UpdateState>;
  @useResult
  $Res call(
      {UpdateStatus status,
      int? etaTimestamp,
      String? comment,
      int tripId,
      String type});
}

/// @nodoc
class _$UpdateStateCopyWithImpl<$Res, $Val extends UpdateState>
    implements $UpdateStateCopyWith<$Res> {
  _$UpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? etaTimestamp = freezed,
    Object? comment = freezed,
    Object? tripId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdateStatus,
      etaTimestamp: freezed == etaTimestamp
          ? _value.etaTimestamp
          : etaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateStateImplCopyWith<$Res>
    implements $UpdateStateCopyWith<$Res> {
  factory _$$UpdateStateImplCopyWith(
          _$UpdateStateImpl value, $Res Function(_$UpdateStateImpl) then) =
      __$$UpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UpdateStatus status,
      int? etaTimestamp,
      String? comment,
      int tripId,
      String type});
}

/// @nodoc
class __$$UpdateStateImplCopyWithImpl<$Res>
    extends _$UpdateStateCopyWithImpl<$Res, _$UpdateStateImpl>
    implements _$$UpdateStateImplCopyWith<$Res> {
  __$$UpdateStateImplCopyWithImpl(
      _$UpdateStateImpl _value, $Res Function(_$UpdateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? etaTimestamp = freezed,
    Object? comment = freezed,
    Object? tripId = null,
    Object? type = null,
  }) {
    return _then(_$UpdateStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UpdateStatus,
      etaTimestamp: freezed == etaTimestamp
          ? _value.etaTimestamp
          : etaTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      tripId: null == tripId
          ? _value.tripId
          : tripId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStateImpl implements _UpdateState {
  const _$UpdateStateImpl(
      {required this.status,
      this.etaTimestamp,
      this.comment,
      required this.tripId,
      required this.type});

  @override
  final UpdateStatus status;
  @override
  final int? etaTimestamp;
  @override
  final String? comment;
  @override
  final int tripId;
  @override
  final String type;

  @override
  String toString() {
    return 'UpdateState(status: $status, etaTimestamp: $etaTimestamp, comment: $comment, tripId: $tripId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.etaTimestamp, etaTimestamp) ||
                other.etaTimestamp == etaTimestamp) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.tripId, tripId) || other.tripId == tripId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, etaTimestamp, comment, tripId, type);

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStateImplCopyWith<_$UpdateStateImpl> get copyWith =>
      __$$UpdateStateImplCopyWithImpl<_$UpdateStateImpl>(this, _$identity);
}

abstract class _UpdateState implements UpdateState {
  const factory _UpdateState(
      {required final UpdateStatus status,
      final int? etaTimestamp,
      final String? comment,
      required final int tripId,
      required final String type}) = _$UpdateStateImpl;

  @override
  UpdateStatus get status;
  @override
  int? get etaTimestamp;
  @override
  String? get comment;
  @override
  int get tripId;
  @override
  String get type;

  /// Create a copy of UpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStateImplCopyWith<_$UpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
