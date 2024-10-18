// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginButtonPressed,
    required TResult Function() codeRequested,
    required TResult Function(String code) codeChanged,
    required TResult Function(String code) verifyCode,
    required TResult Function() onboardingCompleted,
    required TResult Function() checkPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? loginButtonPressed,
    TResult? Function()? codeRequested,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? onboardingCompleted,
    TResult? Function()? checkPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginButtonPressed,
    TResult Function()? codeRequested,
    TResult Function(String code)? codeChanged,
    TResult Function(String code)? verifyCode,
    TResult Function()? onboardingCompleted,
    TResult Function()? checkPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
    required TResult Function(_CheckPermissions value) checkPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult? Function(_CheckPermissions value)? checkPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult Function(_CheckPermissions value)? checkPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginButtonPressedImplCopyWith<$Res> {
  factory _$$LoginButtonPressedImplCopyWith(_$LoginButtonPressedImpl value,
          $Res Function(_$LoginButtonPressedImpl) then) =
      __$$LoginButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$LoginButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginButtonPressedImpl>
    implements _$$LoginButtonPressedImplCopyWith<$Res> {
  __$$LoginButtonPressedImplCopyWithImpl(_$LoginButtonPressedImpl _value,
      $Res Function(_$LoginButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$LoginButtonPressedImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginButtonPressedImpl implements _LoginButtonPressed {
  const _$LoginButtonPressedImpl({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonPressedImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      __$$LoginButtonPressedImplCopyWithImpl<_$LoginButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginButtonPressed,
    required TResult Function() codeRequested,
    required TResult Function(String code) codeChanged,
    required TResult Function(String code) verifyCode,
    required TResult Function() onboardingCompleted,
    required TResult Function() checkPermissions,
  }) {
    return loginButtonPressed(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? loginButtonPressed,
    TResult? Function()? codeRequested,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? onboardingCompleted,
    TResult? Function()? checkPermissions,
  }) {
    return loginButtonPressed?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginButtonPressed,
    TResult Function()? codeRequested,
    TResult Function(String code)? codeChanged,
    TResult Function(String code)? verifyCode,
    TResult Function()? onboardingCompleted,
    TResult Function()? checkPermissions,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
    required TResult Function(_CheckPermissions value) checkPermissions,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult? Function(_CheckPermissions value)? checkPermissions,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult Function(_CheckPermissions value)? checkPermissions,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginButtonPressed implements LoginEvent {
  const factory _LoginButtonPressed({required final String username}) =
      _$LoginButtonPressedImpl;

  String get username;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeRequestedImplCopyWith<$Res> {
  factory _$$CodeRequestedImplCopyWith(
          _$CodeRequestedImpl value, $Res Function(_$CodeRequestedImpl) then) =
      __$$CodeRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CodeRequestedImpl>
    implements _$$CodeRequestedImplCopyWith<$Res> {
  __$$CodeRequestedImplCopyWithImpl(
      _$CodeRequestedImpl _value, $Res Function(_$CodeRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CodeRequestedImpl implements _CodeRequested {
  const _$CodeRequestedImpl();

  @override
  String toString() {
    return 'LoginEvent.codeRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginButtonPressed,
    required TResult Function() codeRequested,
    required TResult Function(String code) codeChanged,
    required TResult Function(String code) verifyCode,
    required TResult Function() onboardingCompleted,
    required TResult Function() checkPermissions,
  }) {
    return codeRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? loginButtonPressed,
    TResult? Function()? codeRequested,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? onboardingCompleted,
    TResult? Function()? checkPermissions,
  }) {
    return codeRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginButtonPressed,
    TResult Function()? codeRequested,
    TResult Function(String code)? codeChanged,
    TResult Function(String code)? verifyCode,
    TResult Function()? onboardingCompleted,
    TResult Function()? checkPermissions,
    required TResult orElse(),
  }) {
    if (codeRequested != null) {
      return codeRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
    required TResult Function(_CheckPermissions value) checkPermissions,
  }) {
    return codeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult? Function(_CheckPermissions value)? checkPermissions,
  }) {
    return codeRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult Function(_CheckPermissions value)? checkPermissions,
    required TResult orElse(),
  }) {
    if (codeRequested != null) {
      return codeRequested(this);
    }
    return orElse();
  }
}

abstract class _CodeRequested implements LoginEvent {
  const factory _CodeRequested() = _$CodeRequestedImpl;
}

/// @nodoc
abstract class _$$CodeChangedImplCopyWith<$Res> {
  factory _$$CodeChangedImplCopyWith(
          _$CodeChangedImpl value, $Res Function(_$CodeChangedImpl) then) =
      __$$CodeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$CodeChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CodeChangedImpl>
    implements _$$CodeChangedImplCopyWith<$Res> {
  __$$CodeChangedImplCopyWithImpl(
      _$CodeChangedImpl _value, $Res Function(_$CodeChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CodeChangedImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeChangedImpl implements _CodeChanged {
  const _$CodeChangedImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'LoginEvent.codeChanged(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeChangedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeChangedImplCopyWith<_$CodeChangedImpl> get copyWith =>
      __$$CodeChangedImplCopyWithImpl<_$CodeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginButtonPressed,
    required TResult Function() codeRequested,
    required TResult Function(String code) codeChanged,
    required TResult Function(String code) verifyCode,
    required TResult Function() onboardingCompleted,
    required TResult Function() checkPermissions,
  }) {
    return codeChanged(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? loginButtonPressed,
    TResult? Function()? codeRequested,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? onboardingCompleted,
    TResult? Function()? checkPermissions,
  }) {
    return codeChanged?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginButtonPressed,
    TResult Function()? codeRequested,
    TResult Function(String code)? codeChanged,
    TResult Function(String code)? verifyCode,
    TResult Function()? onboardingCompleted,
    TResult Function()? checkPermissions,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
    required TResult Function(_CheckPermissions value) checkPermissions,
  }) {
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult? Function(_CheckPermissions value)? checkPermissions,
  }) {
    return codeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult Function(_CheckPermissions value)? checkPermissions,
    required TResult orElse(),
  }) {
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class _CodeChanged implements LoginEvent {
  const factory _CodeChanged({required final String code}) = _$CodeChangedImpl;

  String get code;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeChangedImplCopyWith<_$CodeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyCodeImplCopyWith<$Res> {
  factory _$$VerifyCodeImplCopyWith(
          _$VerifyCodeImpl value, $Res Function(_$VerifyCodeImpl) then) =
      __$$VerifyCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$VerifyCodeImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$VerifyCodeImpl>
    implements _$$VerifyCodeImplCopyWith<$Res> {
  __$$VerifyCodeImplCopyWithImpl(
      _$VerifyCodeImpl _value, $Res Function(_$VerifyCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$VerifyCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyCodeImpl implements _VerifyCode {
  const _$VerifyCodeImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'LoginEvent.verifyCode(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeImplCopyWith<_$VerifyCodeImpl> get copyWith =>
      __$$VerifyCodeImplCopyWithImpl<_$VerifyCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginButtonPressed,
    required TResult Function() codeRequested,
    required TResult Function(String code) codeChanged,
    required TResult Function(String code) verifyCode,
    required TResult Function() onboardingCompleted,
    required TResult Function() checkPermissions,
  }) {
    return verifyCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? loginButtonPressed,
    TResult? Function()? codeRequested,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? onboardingCompleted,
    TResult? Function()? checkPermissions,
  }) {
    return verifyCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginButtonPressed,
    TResult Function()? codeRequested,
    TResult Function(String code)? codeChanged,
    TResult Function(String code)? verifyCode,
    TResult Function()? onboardingCompleted,
    TResult Function()? checkPermissions,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
    required TResult Function(_CheckPermissions value) checkPermissions,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult? Function(_CheckPermissions value)? checkPermissions,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult Function(_CheckPermissions value)? checkPermissions,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyCode implements LoginEvent {
  const factory _VerifyCode({required final String code}) = _$VerifyCodeImpl;

  String get code;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyCodeImplCopyWith<_$VerifyCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnboardingCompletedImplCopyWith<$Res> {
  factory _$$OnboardingCompletedImplCopyWith(_$OnboardingCompletedImpl value,
          $Res Function(_$OnboardingCompletedImpl) then) =
      __$$OnboardingCompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingCompletedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnboardingCompletedImpl>
    implements _$$OnboardingCompletedImplCopyWith<$Res> {
  __$$OnboardingCompletedImplCopyWithImpl(_$OnboardingCompletedImpl _value,
      $Res Function(_$OnboardingCompletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OnboardingCompletedImpl implements _OnboardingCompleted {
  const _$OnboardingCompletedImpl();

  @override
  String toString() {
    return 'LoginEvent.onboardingCompleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingCompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginButtonPressed,
    required TResult Function() codeRequested,
    required TResult Function(String code) codeChanged,
    required TResult Function(String code) verifyCode,
    required TResult Function() onboardingCompleted,
    required TResult Function() checkPermissions,
  }) {
    return onboardingCompleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? loginButtonPressed,
    TResult? Function()? codeRequested,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? onboardingCompleted,
    TResult? Function()? checkPermissions,
  }) {
    return onboardingCompleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginButtonPressed,
    TResult Function()? codeRequested,
    TResult Function(String code)? codeChanged,
    TResult Function(String code)? verifyCode,
    TResult Function()? onboardingCompleted,
    TResult Function()? checkPermissions,
    required TResult orElse(),
  }) {
    if (onboardingCompleted != null) {
      return onboardingCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
    required TResult Function(_CheckPermissions value) checkPermissions,
  }) {
    return onboardingCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult? Function(_CheckPermissions value)? checkPermissions,
  }) {
    return onboardingCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult Function(_CheckPermissions value)? checkPermissions,
    required TResult orElse(),
  }) {
    if (onboardingCompleted != null) {
      return onboardingCompleted(this);
    }
    return orElse();
  }
}

abstract class _OnboardingCompleted implements LoginEvent {
  const factory _OnboardingCompleted() = _$OnboardingCompletedImpl;
}

/// @nodoc
abstract class _$$CheckPermissionsImplCopyWith<$Res> {
  factory _$$CheckPermissionsImplCopyWith(_$CheckPermissionsImpl value,
          $Res Function(_$CheckPermissionsImpl) then) =
      __$$CheckPermissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckPermissionsImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$CheckPermissionsImpl>
    implements _$$CheckPermissionsImplCopyWith<$Res> {
  __$$CheckPermissionsImplCopyWithImpl(_$CheckPermissionsImpl _value,
      $Res Function(_$CheckPermissionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckPermissionsImpl implements _CheckPermissions {
  const _$CheckPermissionsImpl();

  @override
  String toString() {
    return 'LoginEvent.checkPermissions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckPermissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) loginButtonPressed,
    required TResult Function() codeRequested,
    required TResult Function(String code) codeChanged,
    required TResult Function(String code) verifyCode,
    required TResult Function() onboardingCompleted,
    required TResult Function() checkPermissions,
  }) {
    return checkPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? loginButtonPressed,
    TResult? Function()? codeRequested,
    TResult? Function(String code)? codeChanged,
    TResult? Function(String code)? verifyCode,
    TResult? Function()? onboardingCompleted,
    TResult? Function()? checkPermissions,
  }) {
    return checkPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? loginButtonPressed,
    TResult Function()? codeRequested,
    TResult Function(String code)? codeChanged,
    TResult Function(String code)? verifyCode,
    TResult Function()? onboardingCompleted,
    TResult Function()? checkPermissions,
    required TResult orElse(),
  }) {
    if (checkPermissions != null) {
      return checkPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginButtonPressed value) loginButtonPressed,
    required TResult Function(_CodeRequested value) codeRequested,
    required TResult Function(_CodeChanged value) codeChanged,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_OnboardingCompleted value) onboardingCompleted,
    required TResult Function(_CheckPermissions value) checkPermissions,
  }) {
    return checkPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult? Function(_CodeRequested value)? codeRequested,
    TResult? Function(_CodeChanged value)? codeChanged,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult? Function(_CheckPermissions value)? checkPermissions,
  }) {
    return checkPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginButtonPressed value)? loginButtonPressed,
    TResult Function(_CodeRequested value)? codeRequested,
    TResult Function(_CodeChanged value)? codeChanged,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_OnboardingCompleted value)? onboardingCompleted,
    TResult Function(_CheckPermissions value)? checkPermissions,
    required TResult orElse(),
  }) {
    if (checkPermissions != null) {
      return checkPermissions(this);
    }
    return orElse();
  }
}

abstract class _CheckPermissions implements LoginEvent {
  const factory _CheckPermissions() = _$CheckPermissionsImpl;
}

/// @nodoc
mixin _$LoginState {
  String get username => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get authCode => throw _privateConstructorUsedError;
  LoginStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String username,
      String code,
      String authCode,
      LoginStatus status,
      String? errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? code = null,
    Object? authCode = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String code,
      String authCode,
      LoginStatus status,
      String? errorMessage});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? code = null,
    Object? authCode = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LoginStateImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      authCode: null == authCode
          ? _value.authCode
          : authCode // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.username,
      required this.code,
      required this.authCode,
      required this.status,
      this.errorMessage});

  @override
  final String username;
  @override
  final String code;
  @override
  final String authCode;
  @override
  final LoginStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState(username: $username, code: $code, authCode: $authCode, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.authCode, authCode) ||
                other.authCode == authCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, username, code, authCode, status, errorMessage);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final String username,
      required final String code,
      required final String authCode,
      required final LoginStatus status,
      final String? errorMessage}) = _$LoginStateImpl;

  @override
  String get username;
  @override
  String get code;
  @override
  String get authCode;
  @override
  LoginStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
