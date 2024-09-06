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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() pickFile,
    required TResult Function(File file) removeFile,
    required TResult Function(String image) scanDoc,
    required TResult Function() uploadFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? pickFile,
    TResult? Function(File file)? removeFile,
    TResult? Function(String image)? scanDoc,
    TResult? Function()? uploadFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? pickFile,
    TResult Function(File file)? removeFile,
    TResult Function(String image)? scanDoc,
    TResult Function()? uploadFiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_ScanDoc value) scanDoc,
    required TResult Function(_UploadFiles value) uploadFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_ScanDoc value)? scanDoc,
    TResult? Function(_UploadFiles value)? uploadFiles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_ScanDoc value)? scanDoc,
    TResult Function(_UploadFiles value)? uploadFiles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripEventCopyWith<$Res> {
  factory $TripEventCopyWith(TripEvent value, $Res Function(TripEvent) then) =
      _$TripEventCopyWithImpl<$Res, TripEvent>;
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
}

/// @nodoc
abstract class _$$ChangeTabPressedImplCopyWith<$Res> {
  factory _$$ChangeTabPressedImplCopyWith(_$ChangeTabPressedImpl value,
          $Res Function(_$ChangeTabPressedImpl) then) =
      __$$ChangeTabPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TabStatus status, TripModel? trip});

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

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TripModelCopyWith<$Res>? get trip {
    if (_value.trip == null) {
      return null;
    }

    return $TripModelCopyWith<$Res>(_value.trip!, (value) {
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
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() pickFile,
    required TResult Function(File file) removeFile,
    required TResult Function(String image) scanDoc,
    required TResult Function() uploadFiles,
  }) {
    return changeTab(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? pickFile,
    TResult? Function(File file)? removeFile,
    TResult? Function(String image)? scanDoc,
    TResult? Function()? uploadFiles,
  }) {
    return changeTab?.call(status, trip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? pickFile,
    TResult Function(File file)? removeFile,
    TResult Function(String image)? scanDoc,
    TResult Function()? uploadFiles,
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
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_ScanDoc value) scanDoc,
    required TResult Function(_UploadFiles value) uploadFiles,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_ScanDoc value)? scanDoc,
    TResult? Function(_UploadFiles value)? uploadFiles,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_ScanDoc value)? scanDoc,
    TResult Function(_UploadFiles value)? uploadFiles,
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

  TabStatus get status;
  TripModel? get trip;

  /// Create a copy of TripEvent
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
    extends _$TripEventCopyWithImpl<$Res, _$GetDateAndTimeImpl>
    implements _$$GetDateAndTimeImplCopyWith<$Res> {
  __$$GetDateAndTimeImplCopyWithImpl(
      _$GetDateAndTimeImpl _value, $Res Function(_$GetDateAndTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripEvent
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
    return 'TripEvent.getDateAndTime(dateTime: $dateTime)';
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

  /// Create a copy of TripEvent
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
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() pickFile,
    required TResult Function(File file) removeFile,
    required TResult Function(String image) scanDoc,
    required TResult Function() uploadFiles,
  }) {
    return getDateAndTime(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? pickFile,
    TResult? Function(File file)? removeFile,
    TResult? Function(String image)? scanDoc,
    TResult? Function()? uploadFiles,
  }) {
    return getDateAndTime?.call(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? pickFile,
    TResult Function(File file)? removeFile,
    TResult Function(String image)? scanDoc,
    TResult Function()? uploadFiles,
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
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_ScanDoc value) scanDoc,
    required TResult Function(_UploadFiles value) uploadFiles,
  }) {
    return getDateAndTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_ScanDoc value)? scanDoc,
    TResult? Function(_UploadFiles value)? uploadFiles,
  }) {
    return getDateAndTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_ScanDoc value)? scanDoc,
    TResult Function(_UploadFiles value)? uploadFiles,
    required TResult orElse(),
  }) {
    if (getDateAndTime != null) {
      return getDateAndTime(this);
    }
    return orElse();
  }
}

abstract class _GetDateAndTime implements TripEvent {
  const factory _GetDateAndTime({required final String dateTime}) =
      _$GetDateAndTimeImpl;

  String get dateTime;

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDateAndTimeImplCopyWith<_$GetDateAndTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickFileImplCopyWith<$Res> {
  factory _$$PickFileImplCopyWith(
          _$PickFileImpl value, $Res Function(_$PickFileImpl) then) =
      __$$PickFileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickFileImplCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$PickFileImpl>
    implements _$$PickFileImplCopyWith<$Res> {
  __$$PickFileImplCopyWithImpl(
      _$PickFileImpl _value, $Res Function(_$PickFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickFileImpl implements _PickFile {
  const _$PickFileImpl();

  @override
  String toString() {
    return 'TripEvent.pickFile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickFileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() pickFile,
    required TResult Function(File file) removeFile,
    required TResult Function(String image) scanDoc,
    required TResult Function() uploadFiles,
  }) {
    return pickFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? pickFile,
    TResult? Function(File file)? removeFile,
    TResult? Function(String image)? scanDoc,
    TResult? Function()? uploadFiles,
  }) {
    return pickFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? pickFile,
    TResult Function(File file)? removeFile,
    TResult Function(String image)? scanDoc,
    TResult Function()? uploadFiles,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_ScanDoc value) scanDoc,
    required TResult Function(_UploadFiles value) uploadFiles,
  }) {
    return pickFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_ScanDoc value)? scanDoc,
    TResult? Function(_UploadFiles value)? uploadFiles,
  }) {
    return pickFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_ScanDoc value)? scanDoc,
    TResult Function(_UploadFiles value)? uploadFiles,
    required TResult orElse(),
  }) {
    if (pickFile != null) {
      return pickFile(this);
    }
    return orElse();
  }
}

abstract class _PickFile implements TripEvent {
  const factory _PickFile() = _$PickFileImpl;
}

/// @nodoc
abstract class _$$RemoveFileImplCopyWith<$Res> {
  factory _$$RemoveFileImplCopyWith(
          _$RemoveFileImpl value, $Res Function(_$RemoveFileImpl) then) =
      __$$RemoveFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$RemoveFileImplCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$RemoveFileImpl>
    implements _$$RemoveFileImplCopyWith<$Res> {
  __$$RemoveFileImplCopyWithImpl(
      _$RemoveFileImpl _value, $Res Function(_$RemoveFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$RemoveFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$RemoveFileImpl implements _RemoveFile {
  const _$RemoveFileImpl({required this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'TripEvent.removeFile(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFileImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFileImplCopyWith<_$RemoveFileImpl> get copyWith =>
      __$$RemoveFileImplCopyWithImpl<_$RemoveFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() pickFile,
    required TResult Function(File file) removeFile,
    required TResult Function(String image) scanDoc,
    required TResult Function() uploadFiles,
  }) {
    return removeFile(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? pickFile,
    TResult? Function(File file)? removeFile,
    TResult? Function(String image)? scanDoc,
    TResult? Function()? uploadFiles,
  }) {
    return removeFile?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? pickFile,
    TResult Function(File file)? removeFile,
    TResult Function(String image)? scanDoc,
    TResult Function()? uploadFiles,
    required TResult orElse(),
  }) {
    if (removeFile != null) {
      return removeFile(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_ScanDoc value) scanDoc,
    required TResult Function(_UploadFiles value) uploadFiles,
  }) {
    return removeFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_ScanDoc value)? scanDoc,
    TResult? Function(_UploadFiles value)? uploadFiles,
  }) {
    return removeFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_ScanDoc value)? scanDoc,
    TResult Function(_UploadFiles value)? uploadFiles,
    required TResult orElse(),
  }) {
    if (removeFile != null) {
      return removeFile(this);
    }
    return orElse();
  }
}

abstract class _RemoveFile implements TripEvent {
  const factory _RemoveFile({required final File file}) = _$RemoveFileImpl;

  File get file;

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFileImplCopyWith<_$RemoveFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScanDocImplCopyWith<$Res> {
  factory _$$ScanDocImplCopyWith(
          _$ScanDocImpl value, $Res Function(_$ScanDocImpl) then) =
      __$$ScanDocImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$ScanDocImplCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$ScanDocImpl>
    implements _$$ScanDocImplCopyWith<$Res> {
  __$$ScanDocImplCopyWithImpl(
      _$ScanDocImpl _value, $Res Function(_$ScanDocImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ScanDocImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ScanDocImpl implements _ScanDoc {
  const _$ScanDocImpl(this.image);

  @override
  final String image;

  @override
  String toString() {
    return 'TripEvent.scanDoc(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDocImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanDocImplCopyWith<_$ScanDocImpl> get copyWith =>
      __$$ScanDocImplCopyWithImpl<_$ScanDocImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() pickFile,
    required TResult Function(File file) removeFile,
    required TResult Function(String image) scanDoc,
    required TResult Function() uploadFiles,
  }) {
    return scanDoc(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? pickFile,
    TResult? Function(File file)? removeFile,
    TResult? Function(String image)? scanDoc,
    TResult? Function()? uploadFiles,
  }) {
    return scanDoc?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? pickFile,
    TResult Function(File file)? removeFile,
    TResult Function(String image)? scanDoc,
    TResult Function()? uploadFiles,
    required TResult orElse(),
  }) {
    if (scanDoc != null) {
      return scanDoc(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_ScanDoc value) scanDoc,
    required TResult Function(_UploadFiles value) uploadFiles,
  }) {
    return scanDoc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_ScanDoc value)? scanDoc,
    TResult? Function(_UploadFiles value)? uploadFiles,
  }) {
    return scanDoc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_ScanDoc value)? scanDoc,
    TResult Function(_UploadFiles value)? uploadFiles,
    required TResult orElse(),
  }) {
    if (scanDoc != null) {
      return scanDoc(this);
    }
    return orElse();
  }
}

abstract class _ScanDoc implements TripEvent {
  const factory _ScanDoc(final String image) = _$ScanDocImpl;

  String get image;

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanDocImplCopyWith<_$ScanDocImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadFilesImplCopyWith<$Res> {
  factory _$$UploadFilesImplCopyWith(
          _$UploadFilesImpl value, $Res Function(_$UploadFilesImpl) then) =
      __$$UploadFilesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadFilesImplCopyWithImpl<$Res>
    extends _$TripEventCopyWithImpl<$Res, _$UploadFilesImpl>
    implements _$$UploadFilesImplCopyWith<$Res> {
  __$$UploadFilesImplCopyWithImpl(
      _$UploadFilesImpl _value, $Res Function(_$UploadFilesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TripEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadFilesImpl implements _UploadFiles {
  const _$UploadFilesImpl();

  @override
  String toString() {
    return 'TripEvent.uploadFiles()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadFilesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabStatus status, TripModel? trip) changeTab,
    required TResult Function(String dateTime) getDateAndTime,
    required TResult Function() pickFile,
    required TResult Function(File file) removeFile,
    required TResult Function(String image) scanDoc,
    required TResult Function() uploadFiles,
  }) {
    return uploadFiles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TabStatus status, TripModel? trip)? changeTab,
    TResult? Function(String dateTime)? getDateAndTime,
    TResult? Function()? pickFile,
    TResult? Function(File file)? removeFile,
    TResult? Function(String image)? scanDoc,
    TResult? Function()? uploadFiles,
  }) {
    return uploadFiles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabStatus status, TripModel? trip)? changeTab,
    TResult Function(String dateTime)? getDateAndTime,
    TResult Function()? pickFile,
    TResult Function(File file)? removeFile,
    TResult Function(String image)? scanDoc,
    TResult Function()? uploadFiles,
    required TResult orElse(),
  }) {
    if (uploadFiles != null) {
      return uploadFiles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTabPressed value) changeTab,
    required TResult Function(_GetDateAndTime value) getDateAndTime,
    required TResult Function(_PickFile value) pickFile,
    required TResult Function(_RemoveFile value) removeFile,
    required TResult Function(_ScanDoc value) scanDoc,
    required TResult Function(_UploadFiles value) uploadFiles,
  }) {
    return uploadFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTabPressed value)? changeTab,
    TResult? Function(_GetDateAndTime value)? getDateAndTime,
    TResult? Function(_PickFile value)? pickFile,
    TResult? Function(_RemoveFile value)? removeFile,
    TResult? Function(_ScanDoc value)? scanDoc,
    TResult? Function(_UploadFiles value)? uploadFiles,
  }) {
    return uploadFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTabPressed value)? changeTab,
    TResult Function(_GetDateAndTime value)? getDateAndTime,
    TResult Function(_PickFile value)? pickFile,
    TResult Function(_RemoveFile value)? removeFile,
    TResult Function(_ScanDoc value)? scanDoc,
    TResult Function(_UploadFiles value)? uploadFiles,
    required TResult orElse(),
  }) {
    if (uploadFiles != null) {
      return uploadFiles(this);
    }
    return orElse();
  }
}

abstract class _UploadFiles implements TripEvent {
  const factory _UploadFiles() = _$UploadFilesImpl;
}

/// @nodoc
mixin _$TripState {
  TripStatus get status => throw _privateConstructorUsedError;
  TabStatus get tabStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  TripModel? get trip => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  File? get selectedFile => throw _privateConstructorUsedError;
  bool get isFileLoading => throw _privateConstructorUsedError;

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
      TripModel? trip,
      String? dateTime,
      File? selectedFile,
      bool isFileLoading});

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
    Object? dateTime = freezed,
    Object? selectedFile = freezed,
    Object? isFileLoading = null,
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
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFile: freezed == selectedFile
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isFileLoading: null == isFileLoading
          ? _value.isFileLoading
          : isFileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      TripModel? trip,
      String? dateTime,
      File? selectedFile,
      bool isFileLoading});

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
    Object? dateTime = freezed,
    Object? selectedFile = freezed,
    Object? isFileLoading = null,
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
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedFile: freezed == selectedFile
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as File?,
      isFileLoading: null == isFileLoading
          ? _value.isFileLoading
          : isFileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TripStateImpl implements _TripState {
  const _$TripStateImpl(
      {required this.status,
      this.tabStatus = TabStatus.newTrips,
      this.errorMessage,
      this.trip,
      this.dateTime,
      this.selectedFile,
      this.isFileLoading = false});

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
  final String? dateTime;
  @override
  final File? selectedFile;
  @override
  @JsonKey()
  final bool isFileLoading;

  @override
  String toString() {
    return 'TripState(status: $status, tabStatus: $tabStatus, errorMessage: $errorMessage, trip: $trip, dateTime: $dateTime, selectedFile: $selectedFile, isFileLoading: $isFileLoading)';
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
            (identical(other.trip, trip) || other.trip == trip) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.selectedFile, selectedFile) ||
                other.selectedFile == selectedFile) &&
            (identical(other.isFileLoading, isFileLoading) ||
                other.isFileLoading == isFileLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, tabStatus, errorMessage,
      trip, dateTime, selectedFile, isFileLoading);

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
      final TripModel? trip,
      final String? dateTime,
      final File? selectedFile,
      final bool isFileLoading}) = _$TripStateImpl;

  @override
  TripStatus get status;
  @override
  TabStatus get tabStatus;
  @override
  String? get errorMessage;
  @override
  TripModel? get trip;
  @override
  String? get dateTime;
  @override
  File? get selectedFile;
  @override
  bool get isFileLoading;

  /// Create a copy of TripState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TripStateImplCopyWith<_$TripStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
