// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainPageEnum page) pageChanged,
    required TResult Function(bool hideShowNavBar) hideShowNavBar,
    required TResult Function(int id) updateDriveButton,
    required TResult Function() checkConnection,
    required TResult Function() initializeApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainPageEnum page)? pageChanged,
    TResult? Function(bool hideShowNavBar)? hideShowNavBar,
    TResult? Function(int id)? updateDriveButton,
    TResult? Function()? checkConnection,
    TResult? Function()? initializeApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainPageEnum page)? pageChanged,
    TResult Function(bool hideShowNavBar)? hideShowNavBar,
    TResult Function(int id)? updateDriveButton,
    TResult Function()? checkConnection,
    TResult Function()? initializeApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_HideShowNavBar value) hideShowNavBar,
    required TResult Function(_UpdateDriveButton value) updateDriveButton,
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_InitializeApp value) initializeApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_HideShowNavBar value)? hideShowNavBar,
    TResult? Function(_UpdateDriveButton value)? updateDriveButton,
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_InitializeApp value)? initializeApp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_HideShowNavBar value)? hideShowNavBar,
    TResult Function(_UpdateDriveButton value)? updateDriveButton,
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_InitializeApp value)? initializeApp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PageChangedImplCopyWith<$Res> {
  factory _$$PageChangedImplCopyWith(
          _$PageChangedImpl value, $Res Function(_$PageChangedImpl) then) =
      __$$PageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainPageEnum page});
}

/// @nodoc
class __$$PageChangedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$PageChangedImpl>
    implements _$$PageChangedImplCopyWith<$Res> {
  __$$PageChangedImplCopyWithImpl(
      _$PageChangedImpl _value, $Res Function(_$PageChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$PageChangedImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as MainPageEnum,
    ));
  }
}

/// @nodoc

class _$PageChangedImpl implements _PageChanged {
  const _$PageChangedImpl(this.page);

  @override
  final MainPageEnum page;

  @override
  String toString() {
    return 'MainEvent.pageChanged(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageChangedImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      __$$PageChangedImplCopyWithImpl<_$PageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainPageEnum page) pageChanged,
    required TResult Function(bool hideShowNavBar) hideShowNavBar,
    required TResult Function(int id) updateDriveButton,
    required TResult Function() checkConnection,
    required TResult Function() initializeApp,
  }) {
    return pageChanged(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainPageEnum page)? pageChanged,
    TResult? Function(bool hideShowNavBar)? hideShowNavBar,
    TResult? Function(int id)? updateDriveButton,
    TResult? Function()? checkConnection,
    TResult? Function()? initializeApp,
  }) {
    return pageChanged?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainPageEnum page)? pageChanged,
    TResult Function(bool hideShowNavBar)? hideShowNavBar,
    TResult Function(int id)? updateDriveButton,
    TResult Function()? checkConnection,
    TResult Function()? initializeApp,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_HideShowNavBar value) hideShowNavBar,
    required TResult Function(_UpdateDriveButton value) updateDriveButton,
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_InitializeApp value) initializeApp,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_HideShowNavBar value)? hideShowNavBar,
    TResult? Function(_UpdateDriveButton value)? updateDriveButton,
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_InitializeApp value)? initializeApp,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_HideShowNavBar value)? hideShowNavBar,
    TResult Function(_UpdateDriveButton value)? updateDriveButton,
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_InitializeApp value)? initializeApp,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements MainEvent {
  const factory _PageChanged(final MainPageEnum page) = _$PageChangedImpl;

  MainPageEnum get page;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HideShowNavBarImplCopyWith<$Res> {
  factory _$$HideShowNavBarImplCopyWith(_$HideShowNavBarImpl value,
          $Res Function(_$HideShowNavBarImpl) then) =
      __$$HideShowNavBarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hideShowNavBar});
}

/// @nodoc
class __$$HideShowNavBarImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$HideShowNavBarImpl>
    implements _$$HideShowNavBarImplCopyWith<$Res> {
  __$$HideShowNavBarImplCopyWithImpl(
      _$HideShowNavBarImpl _value, $Res Function(_$HideShowNavBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hideShowNavBar = null,
  }) {
    return _then(_$HideShowNavBarImpl(
      null == hideShowNavBar
          ? _value.hideShowNavBar
          : hideShowNavBar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HideShowNavBarImpl implements _HideShowNavBar {
  const _$HideShowNavBarImpl(this.hideShowNavBar);

  @override
  final bool hideShowNavBar;

  @override
  String toString() {
    return 'MainEvent.hideShowNavBar(hideShowNavBar: $hideShowNavBar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HideShowNavBarImpl &&
            (identical(other.hideShowNavBar, hideShowNavBar) ||
                other.hideShowNavBar == hideShowNavBar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hideShowNavBar);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HideShowNavBarImplCopyWith<_$HideShowNavBarImpl> get copyWith =>
      __$$HideShowNavBarImplCopyWithImpl<_$HideShowNavBarImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainPageEnum page) pageChanged,
    required TResult Function(bool hideShowNavBar) hideShowNavBar,
    required TResult Function(int id) updateDriveButton,
    required TResult Function() checkConnection,
    required TResult Function() initializeApp,
  }) {
    return hideShowNavBar(this.hideShowNavBar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainPageEnum page)? pageChanged,
    TResult? Function(bool hideShowNavBar)? hideShowNavBar,
    TResult? Function(int id)? updateDriveButton,
    TResult? Function()? checkConnection,
    TResult? Function()? initializeApp,
  }) {
    return hideShowNavBar?.call(this.hideShowNavBar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainPageEnum page)? pageChanged,
    TResult Function(bool hideShowNavBar)? hideShowNavBar,
    TResult Function(int id)? updateDriveButton,
    TResult Function()? checkConnection,
    TResult Function()? initializeApp,
    required TResult orElse(),
  }) {
    if (hideShowNavBar != null) {
      return hideShowNavBar(this.hideShowNavBar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_HideShowNavBar value) hideShowNavBar,
    required TResult Function(_UpdateDriveButton value) updateDriveButton,
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_InitializeApp value) initializeApp,
  }) {
    return hideShowNavBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_HideShowNavBar value)? hideShowNavBar,
    TResult? Function(_UpdateDriveButton value)? updateDriveButton,
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_InitializeApp value)? initializeApp,
  }) {
    return hideShowNavBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_HideShowNavBar value)? hideShowNavBar,
    TResult Function(_UpdateDriveButton value)? updateDriveButton,
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_InitializeApp value)? initializeApp,
    required TResult orElse(),
  }) {
    if (hideShowNavBar != null) {
      return hideShowNavBar(this);
    }
    return orElse();
  }
}

abstract class _HideShowNavBar implements MainEvent {
  const factory _HideShowNavBar(final bool hideShowNavBar) =
      _$HideShowNavBarImpl;

  bool get hideShowNavBar;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HideShowNavBarImplCopyWith<_$HideShowNavBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateDriveButtonImplCopyWith<$Res> {
  factory _$$UpdateDriveButtonImplCopyWith(_$UpdateDriveButtonImpl value,
          $Res Function(_$UpdateDriveButtonImpl) then) =
      __$$UpdateDriveButtonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$UpdateDriveButtonImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$UpdateDriveButtonImpl>
    implements _$$UpdateDriveButtonImplCopyWith<$Res> {
  __$$UpdateDriveButtonImplCopyWithImpl(_$UpdateDriveButtonImpl _value,
      $Res Function(_$UpdateDriveButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$UpdateDriveButtonImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateDriveButtonImpl implements _UpdateDriveButton {
  const _$UpdateDriveButtonImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'MainEvent.updateDriveButton(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateDriveButtonImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateDriveButtonImplCopyWith<_$UpdateDriveButtonImpl> get copyWith =>
      __$$UpdateDriveButtonImplCopyWithImpl<_$UpdateDriveButtonImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainPageEnum page) pageChanged,
    required TResult Function(bool hideShowNavBar) hideShowNavBar,
    required TResult Function(int id) updateDriveButton,
    required TResult Function() checkConnection,
    required TResult Function() initializeApp,
  }) {
    return updateDriveButton(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainPageEnum page)? pageChanged,
    TResult? Function(bool hideShowNavBar)? hideShowNavBar,
    TResult? Function(int id)? updateDriveButton,
    TResult? Function()? checkConnection,
    TResult? Function()? initializeApp,
  }) {
    return updateDriveButton?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainPageEnum page)? pageChanged,
    TResult Function(bool hideShowNavBar)? hideShowNavBar,
    TResult Function(int id)? updateDriveButton,
    TResult Function()? checkConnection,
    TResult Function()? initializeApp,
    required TResult orElse(),
  }) {
    if (updateDriveButton != null) {
      return updateDriveButton(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_HideShowNavBar value) hideShowNavBar,
    required TResult Function(_UpdateDriveButton value) updateDriveButton,
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_InitializeApp value) initializeApp,
  }) {
    return updateDriveButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_HideShowNavBar value)? hideShowNavBar,
    TResult? Function(_UpdateDriveButton value)? updateDriveButton,
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_InitializeApp value)? initializeApp,
  }) {
    return updateDriveButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_HideShowNavBar value)? hideShowNavBar,
    TResult Function(_UpdateDriveButton value)? updateDriveButton,
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_InitializeApp value)? initializeApp,
    required TResult orElse(),
  }) {
    if (updateDriveButton != null) {
      return updateDriveButton(this);
    }
    return orElse();
  }
}

abstract class _UpdateDriveButton implements MainEvent {
  const factory _UpdateDriveButton(final int id) = _$UpdateDriveButtonImpl;

  int get id;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateDriveButtonImplCopyWith<_$UpdateDriveButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckConnectionImplCopyWith<$Res> {
  factory _$$CheckConnectionImplCopyWith(_$CheckConnectionImpl value,
          $Res Function(_$CheckConnectionImpl) then) =
      __$$CheckConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckConnectionImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$CheckConnectionImpl>
    implements _$$CheckConnectionImplCopyWith<$Res> {
  __$$CheckConnectionImplCopyWithImpl(
      _$CheckConnectionImpl _value, $Res Function(_$CheckConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckConnectionImpl implements _CheckConnection {
  const _$CheckConnectionImpl();

  @override
  String toString() {
    return 'MainEvent.checkConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainPageEnum page) pageChanged,
    required TResult Function(bool hideShowNavBar) hideShowNavBar,
    required TResult Function(int id) updateDriveButton,
    required TResult Function() checkConnection,
    required TResult Function() initializeApp,
  }) {
    return checkConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainPageEnum page)? pageChanged,
    TResult? Function(bool hideShowNavBar)? hideShowNavBar,
    TResult? Function(int id)? updateDriveButton,
    TResult? Function()? checkConnection,
    TResult? Function()? initializeApp,
  }) {
    return checkConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainPageEnum page)? pageChanged,
    TResult Function(bool hideShowNavBar)? hideShowNavBar,
    TResult Function(int id)? updateDriveButton,
    TResult Function()? checkConnection,
    TResult Function()? initializeApp,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_HideShowNavBar value) hideShowNavBar,
    required TResult Function(_UpdateDriveButton value) updateDriveButton,
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_InitializeApp value) initializeApp,
  }) {
    return checkConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_HideShowNavBar value)? hideShowNavBar,
    TResult? Function(_UpdateDriveButton value)? updateDriveButton,
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_InitializeApp value)? initializeApp,
  }) {
    return checkConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_HideShowNavBar value)? hideShowNavBar,
    TResult Function(_UpdateDriveButton value)? updateDriveButton,
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_InitializeApp value)? initializeApp,
    required TResult orElse(),
  }) {
    if (checkConnection != null) {
      return checkConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckConnection implements MainEvent {
  const factory _CheckConnection() = _$CheckConnectionImpl;
}

/// @nodoc
abstract class _$$InitializeAppImplCopyWith<$Res> {
  factory _$$InitializeAppImplCopyWith(
          _$InitializeAppImpl value, $Res Function(_$InitializeAppImpl) then) =
      __$$InitializeAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeAppImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$InitializeAppImpl>
    implements _$$InitializeAppImplCopyWith<$Res> {
  __$$InitializeAppImplCopyWithImpl(
      _$InitializeAppImpl _value, $Res Function(_$InitializeAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeAppImpl implements _InitializeApp {
  const _$InitializeAppImpl();

  @override
  String toString() {
    return 'MainEvent.initializeApp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainPageEnum page) pageChanged,
    required TResult Function(bool hideShowNavBar) hideShowNavBar,
    required TResult Function(int id) updateDriveButton,
    required TResult Function() checkConnection,
    required TResult Function() initializeApp,
  }) {
    return initializeApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainPageEnum page)? pageChanged,
    TResult? Function(bool hideShowNavBar)? hideShowNavBar,
    TResult? Function(int id)? updateDriveButton,
    TResult? Function()? checkConnection,
    TResult? Function()? initializeApp,
  }) {
    return initializeApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainPageEnum page)? pageChanged,
    TResult Function(bool hideShowNavBar)? hideShowNavBar,
    TResult Function(int id)? updateDriveButton,
    TResult Function()? checkConnection,
    TResult Function()? initializeApp,
    required TResult orElse(),
  }) {
    if (initializeApp != null) {
      return initializeApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_HideShowNavBar value) hideShowNavBar,
    required TResult Function(_UpdateDriveButton value) updateDriveButton,
    required TResult Function(_CheckConnection value) checkConnection,
    required TResult Function(_InitializeApp value) initializeApp,
  }) {
    return initializeApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_HideShowNavBar value)? hideShowNavBar,
    TResult? Function(_UpdateDriveButton value)? updateDriveButton,
    TResult? Function(_CheckConnection value)? checkConnection,
    TResult? Function(_InitializeApp value)? initializeApp,
  }) {
    return initializeApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_HideShowNavBar value)? hideShowNavBar,
    TResult Function(_UpdateDriveButton value)? updateDriveButton,
    TResult Function(_CheckConnection value)? checkConnection,
    TResult Function(_InitializeApp value)? initializeApp,
    required TResult orElse(),
  }) {
    if (initializeApp != null) {
      return initializeApp(this);
    }
    return orElse();
  }
}

abstract class _InitializeApp implements MainEvent {
  const factory _InitializeApp() = _$InitializeAppImpl;
}

/// @nodoc
mixin _$MainState {
  MainPageEnum get selectedPage => throw _privateConstructorUsedError;
  bool get showNavBar => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  bool get isDriveStarted => throw _privateConstructorUsedError;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {MainPageEnum selectedPage,
      bool showNavBar,
      bool isConnected,
      bool isDriveStarted});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPage = null,
    Object? showNavBar = null,
    Object? isConnected = null,
    Object? isDriveStarted = null,
  }) {
    return _then(_value.copyWith(
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as MainPageEnum,
      showNavBar: null == showNavBar
          ? _value.showNavBar
          : showNavBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isDriveStarted: null == isDriveStarted
          ? _value.isDriveStarted
          : isDriveStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainPageEnum selectedPage,
      bool showNavBar,
      bool isConnected,
      bool isDriveStarted});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPage = null,
    Object? showNavBar = null,
    Object? isConnected = null,
    Object? isDriveStarted = null,
  }) {
    return _then(_$MainStateImpl(
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as MainPageEnum,
      showNavBar: null == showNavBar
          ? _value.showNavBar
          : showNavBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isDriveStarted: null == isDriveStarted
          ? _value.isDriveStarted
          : isDriveStarted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {required this.selectedPage,
      required this.showNavBar,
      required this.isConnected,
      required this.isDriveStarted});

  @override
  final MainPageEnum selectedPage;
  @override
  final bool showNavBar;
  @override
  final bool isConnected;
  @override
  final bool isDriveStarted;

  @override
  String toString() {
    return 'MainState(selectedPage: $selectedPage, showNavBar: $showNavBar, isConnected: $isConnected, isDriveStarted: $isDriveStarted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.selectedPage, selectedPage) ||
                other.selectedPage == selectedPage) &&
            (identical(other.showNavBar, showNavBar) ||
                other.showNavBar == showNavBar) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.isDriveStarted, isDriveStarted) ||
                other.isDriveStarted == isDriveStarted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedPage, showNavBar, isConnected, isDriveStarted);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {required final MainPageEnum selectedPage,
      required final bool showNavBar,
      required final bool isConnected,
      required final bool isDriveStarted}) = _$MainStateImpl;

  @override
  MainPageEnum get selectedPage;
  @override
  bool get showNavBar;
  @override
  bool get isConnected;
  @override
  bool get isDriveStarted;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
