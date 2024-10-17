// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startPolling,
    required TResult Function() stopPolling,
    required TResult Function() fetchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startPolling,
    TResult? Function()? stopPolling,
    TResult? Function()? fetchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startPolling,
    TResult Function()? stopPolling,
    TResult Function()? fetchNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StartPolling value) startPolling,
    required TResult Function(StopPolling value) stopPolling,
    required TResult Function(FetchNotifications value) fetchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StartPolling value)? startPolling,
    TResult? Function(StopPolling value)? stopPolling,
    TResult? Function(FetchNotifications value)? fetchNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StartPolling value)? startPolling,
    TResult Function(StopPolling value)? stopPolling,
    TResult Function(FetchNotifications value)? fetchNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'NotificationEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startPolling,
    required TResult Function() stopPolling,
    required TResult Function() fetchNotifications,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startPolling,
    TResult? Function()? stopPolling,
    TResult? Function()? fetchNotifications,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startPolling,
    TResult Function()? stopPolling,
    TResult Function()? fetchNotifications,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StartPolling value) startPolling,
    required TResult Function(StopPolling value) stopPolling,
    required TResult Function(FetchNotifications value) fetchNotifications,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StartPolling value)? startPolling,
    TResult? Function(StopPolling value)? stopPolling,
    TResult? Function(FetchNotifications value)? fetchNotifications,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StartPolling value)? startPolling,
    TResult Function(StopPolling value)? stopPolling,
    TResult Function(FetchNotifications value)? fetchNotifications,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements NotificationEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StartPollingImplCopyWith<$Res> {
  factory _$$StartPollingImplCopyWith(
          _$StartPollingImpl value, $Res Function(_$StartPollingImpl) then) =
      __$$StartPollingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartPollingImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$StartPollingImpl>
    implements _$$StartPollingImplCopyWith<$Res> {
  __$$StartPollingImplCopyWithImpl(
      _$StartPollingImpl _value, $Res Function(_$StartPollingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartPollingImpl implements StartPolling {
  const _$StartPollingImpl();

  @override
  String toString() {
    return 'NotificationEvent.startPolling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartPollingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startPolling,
    required TResult Function() stopPolling,
    required TResult Function() fetchNotifications,
  }) {
    return startPolling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startPolling,
    TResult? Function()? stopPolling,
    TResult? Function()? fetchNotifications,
  }) {
    return startPolling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startPolling,
    TResult Function()? stopPolling,
    TResult Function()? fetchNotifications,
    required TResult orElse(),
  }) {
    if (startPolling != null) {
      return startPolling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StartPolling value) startPolling,
    required TResult Function(StopPolling value) stopPolling,
    required TResult Function(FetchNotifications value) fetchNotifications,
  }) {
    return startPolling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StartPolling value)? startPolling,
    TResult? Function(StopPolling value)? stopPolling,
    TResult? Function(FetchNotifications value)? fetchNotifications,
  }) {
    return startPolling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StartPolling value)? startPolling,
    TResult Function(StopPolling value)? stopPolling,
    TResult Function(FetchNotifications value)? fetchNotifications,
    required TResult orElse(),
  }) {
    if (startPolling != null) {
      return startPolling(this);
    }
    return orElse();
  }
}

abstract class StartPolling implements NotificationEvent {
  const factory StartPolling() = _$StartPollingImpl;
}

/// @nodoc
abstract class _$$StopPollingImplCopyWith<$Res> {
  factory _$$StopPollingImplCopyWith(
          _$StopPollingImpl value, $Res Function(_$StopPollingImpl) then) =
      __$$StopPollingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopPollingImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$StopPollingImpl>
    implements _$$StopPollingImplCopyWith<$Res> {
  __$$StopPollingImplCopyWithImpl(
      _$StopPollingImpl _value, $Res Function(_$StopPollingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopPollingImpl implements StopPolling {
  const _$StopPollingImpl();

  @override
  String toString() {
    return 'NotificationEvent.stopPolling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopPollingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startPolling,
    required TResult Function() stopPolling,
    required TResult Function() fetchNotifications,
  }) {
    return stopPolling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startPolling,
    TResult? Function()? stopPolling,
    TResult? Function()? fetchNotifications,
  }) {
    return stopPolling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startPolling,
    TResult Function()? stopPolling,
    TResult Function()? fetchNotifications,
    required TResult orElse(),
  }) {
    if (stopPolling != null) {
      return stopPolling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StartPolling value) startPolling,
    required TResult Function(StopPolling value) stopPolling,
    required TResult Function(FetchNotifications value) fetchNotifications,
  }) {
    return stopPolling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StartPolling value)? startPolling,
    TResult? Function(StopPolling value)? stopPolling,
    TResult? Function(FetchNotifications value)? fetchNotifications,
  }) {
    return stopPolling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StartPolling value)? startPolling,
    TResult Function(StopPolling value)? stopPolling,
    TResult Function(FetchNotifications value)? fetchNotifications,
    required TResult orElse(),
  }) {
    if (stopPolling != null) {
      return stopPolling(this);
    }
    return orElse();
  }
}

abstract class StopPolling implements NotificationEvent {
  const factory StopPolling() = _$StopPollingImpl;
}

/// @nodoc
abstract class _$$FetchNotificationsImplCopyWith<$Res> {
  factory _$$FetchNotificationsImplCopyWith(_$FetchNotificationsImpl value,
          $Res Function(_$FetchNotificationsImpl) then) =
      __$$FetchNotificationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$FetchNotificationsImpl>
    implements _$$FetchNotificationsImplCopyWith<$Res> {
  __$$FetchNotificationsImplCopyWithImpl(_$FetchNotificationsImpl _value,
      $Res Function(_$FetchNotificationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchNotificationsImpl implements FetchNotifications {
  const _$FetchNotificationsImpl();

  @override
  String toString() {
    return 'NotificationEvent.fetchNotifications()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchNotificationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startPolling,
    required TResult Function() stopPolling,
    required TResult Function() fetchNotifications,
  }) {
    return fetchNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startPolling,
    TResult? Function()? stopPolling,
    TResult? Function()? fetchNotifications,
  }) {
    return fetchNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startPolling,
    TResult Function()? stopPolling,
    TResult Function()? fetchNotifications,
    required TResult orElse(),
  }) {
    if (fetchNotifications != null) {
      return fetchNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StartPolling value) startPolling,
    required TResult Function(StopPolling value) stopPolling,
    required TResult Function(FetchNotifications value) fetchNotifications,
  }) {
    return fetchNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(StartPolling value)? startPolling,
    TResult? Function(StopPolling value)? stopPolling,
    TResult? Function(FetchNotifications value)? fetchNotifications,
  }) {
    return fetchNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StartPolling value)? startPolling,
    TResult Function(StopPolling value)? stopPolling,
    TResult Function(FetchNotifications value)? fetchNotifications,
    required TResult orElse(),
  }) {
    if (fetchNotifications != null) {
      return fetchNotifications(this);
    }
    return orElse();
  }
}

abstract class FetchNotifications implements NotificationEvent {
  const factory FetchNotifications() = _$FetchNotificationsImpl;
}

/// @nodoc
mixin _$NotificationState {
  NotificationStatus get status => throw _privateConstructorUsedError;
  List<NotificationModel>? get notifications =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {NotificationStatus status,
      List<NotificationModel>? notifications,
      String? errorMessage});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notifications = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
      notifications: freezed == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NotificationStatus status,
      List<NotificationModel>? notifications,
      String? errorMessage});
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notifications = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$NotificationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationStatus,
      notifications: freezed == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {required this.status,
      final List<NotificationModel>? notifications,
      this.errorMessage})
      : _notifications = notifications;

  @override
  final NotificationStatus status;
  final List<NotificationModel>? _notifications;
  @override
  List<NotificationModel>? get notifications {
    final value = _notifications;
    if (value == null) return null;
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NotificationState(status: $status, notifications: $notifications, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_notifications), errorMessage);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {required final NotificationStatus status,
      final List<NotificationModel>? notifications,
      final String? errorMessage}) = _$NotificationStateImpl;

  @override
  NotificationStatus get status;
  @override
  List<NotificationModel>? get notifications;
  @override
  String? get errorMessage;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
