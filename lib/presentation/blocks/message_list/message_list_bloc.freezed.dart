// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListEventCopyWith<$Res> {
  factory $MessageListEventCopyWith(
          MessageListEvent value, $Res Function(MessageListEvent) then) =
      _$MessageListEventCopyWithImpl<$Res, MessageListEvent>;
}

/// @nodoc
class _$MessageListEventCopyWithImpl<$Res, $Val extends MessageListEvent>
    implements $MessageListEventCopyWith<$Res> {
  _$MessageListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetChatsImplCopyWith<$Res> {
  factory _$$GetChatsImplCopyWith(
          _$GetChatsImpl value, $Res Function(_$GetChatsImpl) then) =
      __$$GetChatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetChatsImplCopyWithImpl<$Res>
    extends _$MessageListEventCopyWithImpl<$Res, _$GetChatsImpl>
    implements _$$GetChatsImplCopyWith<$Res> {
  __$$GetChatsImplCopyWithImpl(
      _$GetChatsImpl _value, $Res Function(_$GetChatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetChatsImpl implements _GetChats {
  const _$GetChatsImpl();

  @override
  String toString() {
    return 'MessageListEvent.getChats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetChatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getChats,
  }) {
    return getChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getChats,
  }) {
    return getChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getChats,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChats value) getChats,
  }) {
    return getChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChats value)? getChats,
  }) {
    return getChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChats value)? getChats,
    required TResult orElse(),
  }) {
    if (getChats != null) {
      return getChats(this);
    }
    return orElse();
  }
}

abstract class _GetChats implements MessageListEvent {
  const factory _GetChats() = _$GetChatsImpl;
}

/// @nodoc
mixin _$MessageListState {
  MessageListStatus get status => throw _privateConstructorUsedError;
  List<ChatModel> get chatList => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MessageListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageListStateCopyWith<MessageListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageListStateCopyWith<$Res> {
  factory $MessageListStateCopyWith(
          MessageListState value, $Res Function(MessageListState) then) =
      _$MessageListStateCopyWithImpl<$Res, MessageListState>;
  @useResult
  $Res call(
      {MessageListStatus status,
      List<ChatModel> chatList,
      String? errorMessage});
}

/// @nodoc
class _$MessageListStateCopyWithImpl<$Res, $Val extends MessageListState>
    implements $MessageListStateCopyWith<$Res> {
  _$MessageListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? chatList = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageListStatus,
      chatList: null == chatList
          ? _value.chatList
          : chatList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageListStateImplCopyWith<$Res>
    implements $MessageListStateCopyWith<$Res> {
  factory _$$MessageListStateImplCopyWith(_$MessageListStateImpl value,
          $Res Function(_$MessageListStateImpl) then) =
      __$$MessageListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageListStatus status,
      List<ChatModel> chatList,
      String? errorMessage});
}

/// @nodoc
class __$$MessageListStateImplCopyWithImpl<$Res>
    extends _$MessageListStateCopyWithImpl<$Res, _$MessageListStateImpl>
    implements _$$MessageListStateImplCopyWith<$Res> {
  __$$MessageListStateImplCopyWithImpl(_$MessageListStateImpl _value,
      $Res Function(_$MessageListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? chatList = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$MessageListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageListStatus,
      chatList: null == chatList
          ? _value._chatList
          : chatList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MessageListStateImpl implements _MessageListState {
  const _$MessageListStateImpl(
      {required this.status,
      final List<ChatModel> chatList = const [],
      this.errorMessage})
      : _chatList = chatList;

  @override
  final MessageListStatus status;
  final List<ChatModel> _chatList;
  @override
  @JsonKey()
  List<ChatModel> get chatList {
    if (_chatList is EqualUnmodifiableListView) return _chatList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatList);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MessageListState(status: $status, chatList: $chatList, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._chatList, _chatList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_chatList), errorMessage);

  /// Create a copy of MessageListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageListStateImplCopyWith<_$MessageListStateImpl> get copyWith =>
      __$$MessageListStateImplCopyWithImpl<_$MessageListStateImpl>(
          this, _$identity);
}

abstract class _MessageListState implements MessageListState {
  const factory _MessageListState(
      {required final MessageListStatus status,
      final List<ChatModel> chatList,
      final String? errorMessage}) = _$MessageListStateImpl;

  @override
  MessageListStatus get status;
  @override
  List<ChatModel> get chatList;
  @override
  String? get errorMessage;

  /// Create a copy of MessageListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageListStateImplCopyWith<_$MessageListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
