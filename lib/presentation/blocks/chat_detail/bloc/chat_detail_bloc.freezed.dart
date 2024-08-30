// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String messageContent, ChatDetailModel chatDetails)
        sendMessage,
    required TResult Function(int chatId) fetchChatDetails,
    required TResult Function(MessageModel newMessage) receiveNewMessage,
    required TResult Function(String url, String fileName) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult? Function(int chatId)? fetchChatDetails,
    TResult? Function(MessageModel newMessage)? receiveNewMessage,
    TResult? Function(String url, String fileName)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult Function(int chatId)? fetchChatDetails,
    TResult Function(MessageModel newMessage)? receiveNewMessage,
    TResult Function(String url, String fileName)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FetchChatDetails value) fetchChatDetails,
    required TResult Function(_ReceiveNewMessage value) receiveNewMessage,
    required TResult Function(_DownloadFile value) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_FetchChatDetails value)? fetchChatDetails,
    TResult? Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FetchChatDetails value)? fetchChatDetails,
    TResult Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailEventCopyWith<$Res> {
  factory $ChatDetailEventCopyWith(
          ChatDetailEvent value, $Res Function(ChatDetailEvent) then) =
      _$ChatDetailEventCopyWithImpl<$Res, ChatDetailEvent>;
}

/// @nodoc
class _$ChatDetailEventCopyWithImpl<$Res, $Val extends ChatDetailEvent>
    implements $ChatDetailEventCopyWith<$Res> {
  _$ChatDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageContent, ChatDetailModel chatDetails});

  $ChatDetailModelCopyWith<$Res> get chatDetails;
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageContent = null,
    Object? chatDetails = null,
  }) {
    return _then(_$SendMessageImpl(
      null == messageContent
          ? _value.messageContent
          : messageContent // ignore: cast_nullable_to_non_nullable
              as String,
      null == chatDetails
          ? _value.chatDetails
          : chatDetails // ignore: cast_nullable_to_non_nullable
              as ChatDetailModel,
    ));
  }

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatDetailModelCopyWith<$Res> get chatDetails {
    return $ChatDetailModelCopyWith<$Res>(_value.chatDetails, (value) {
      return _then(_value.copyWith(chatDetails: value));
    });
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(this.messageContent, this.chatDetails);

  @override
  final String messageContent;
  @override
  final ChatDetailModel chatDetails;

  @override
  String toString() {
    return 'ChatDetailEvent.sendMessage(messageContent: $messageContent, chatDetails: $chatDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.messageContent, messageContent) ||
                other.messageContent == messageContent) &&
            (identical(other.chatDetails, chatDetails) ||
                other.chatDetails == chatDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageContent, chatDetails);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String messageContent, ChatDetailModel chatDetails)
        sendMessage,
    required TResult Function(int chatId) fetchChatDetails,
    required TResult Function(MessageModel newMessage) receiveNewMessage,
    required TResult Function(String url, String fileName) downloadFile,
  }) {
    return sendMessage(messageContent, chatDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult? Function(int chatId)? fetchChatDetails,
    TResult? Function(MessageModel newMessage)? receiveNewMessage,
    TResult? Function(String url, String fileName)? downloadFile,
  }) {
    return sendMessage?.call(messageContent, chatDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult Function(int chatId)? fetchChatDetails,
    TResult Function(MessageModel newMessage)? receiveNewMessage,
    TResult Function(String url, String fileName)? downloadFile,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(messageContent, chatDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FetchChatDetails value) fetchChatDetails,
    required TResult Function(_ReceiveNewMessage value) receiveNewMessage,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_FetchChatDetails value)? fetchChatDetails,
    TResult? Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FetchChatDetails value)? fetchChatDetails,
    TResult Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatDetailEvent {
  const factory _SendMessage(
          final String messageContent, final ChatDetailModel chatDetails) =
      _$SendMessageImpl;

  String get messageContent;
  ChatDetailModel get chatDetails;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchChatDetailsImplCopyWith<$Res> {
  factory _$$FetchChatDetailsImplCopyWith(_$FetchChatDetailsImpl value,
          $Res Function(_$FetchChatDetailsImpl) then) =
      __$$FetchChatDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$FetchChatDetailsImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$FetchChatDetailsImpl>
    implements _$$FetchChatDetailsImplCopyWith<$Res> {
  __$$FetchChatDetailsImplCopyWithImpl(_$FetchChatDetailsImpl _value,
      $Res Function(_$FetchChatDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$FetchChatDetailsImpl(
      null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchChatDetailsImpl implements _FetchChatDetails {
  const _$FetchChatDetailsImpl(this.chatId);

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatDetailEvent.fetchChatDetails(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchChatDetailsImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchChatDetailsImplCopyWith<_$FetchChatDetailsImpl> get copyWith =>
      __$$FetchChatDetailsImplCopyWithImpl<_$FetchChatDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String messageContent, ChatDetailModel chatDetails)
        sendMessage,
    required TResult Function(int chatId) fetchChatDetails,
    required TResult Function(MessageModel newMessage) receiveNewMessage,
    required TResult Function(String url, String fileName) downloadFile,
  }) {
    return fetchChatDetails(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult? Function(int chatId)? fetchChatDetails,
    TResult? Function(MessageModel newMessage)? receiveNewMessage,
    TResult? Function(String url, String fileName)? downloadFile,
  }) {
    return fetchChatDetails?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult Function(int chatId)? fetchChatDetails,
    TResult Function(MessageModel newMessage)? receiveNewMessage,
    TResult Function(String url, String fileName)? downloadFile,
    required TResult orElse(),
  }) {
    if (fetchChatDetails != null) {
      return fetchChatDetails(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FetchChatDetails value) fetchChatDetails,
    required TResult Function(_ReceiveNewMessage value) receiveNewMessage,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return fetchChatDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_FetchChatDetails value)? fetchChatDetails,
    TResult? Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return fetchChatDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FetchChatDetails value)? fetchChatDetails,
    TResult Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (fetchChatDetails != null) {
      return fetchChatDetails(this);
    }
    return orElse();
  }
}

abstract class _FetchChatDetails implements ChatDetailEvent {
  const factory _FetchChatDetails(final int chatId) = _$FetchChatDetailsImpl;

  int get chatId;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchChatDetailsImplCopyWith<_$FetchChatDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveNewMessageImplCopyWith<$Res> {
  factory _$$ReceiveNewMessageImplCopyWith(_$ReceiveNewMessageImpl value,
          $Res Function(_$ReceiveNewMessageImpl) then) =
      __$$ReceiveNewMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageModel newMessage});

  $MessageModelCopyWith<$Res> get newMessage;
}

/// @nodoc
class __$$ReceiveNewMessageImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$ReceiveNewMessageImpl>
    implements _$$ReceiveNewMessageImplCopyWith<$Res> {
  __$$ReceiveNewMessageImplCopyWithImpl(_$ReceiveNewMessageImpl _value,
      $Res Function(_$ReceiveNewMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newMessage = null,
  }) {
    return _then(_$ReceiveNewMessageImpl(
      null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as MessageModel,
    ));
  }

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res> get newMessage {
    return $MessageModelCopyWith<$Res>(_value.newMessage, (value) {
      return _then(_value.copyWith(newMessage: value));
    });
  }
}

/// @nodoc

class _$ReceiveNewMessageImpl implements _ReceiveNewMessage {
  const _$ReceiveNewMessageImpl(this.newMessage);

  @override
  final MessageModel newMessage;

  @override
  String toString() {
    return 'ChatDetailEvent.receiveNewMessage(newMessage: $newMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveNewMessageImpl &&
            (identical(other.newMessage, newMessage) ||
                other.newMessage == newMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newMessage);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveNewMessageImplCopyWith<_$ReceiveNewMessageImpl> get copyWith =>
      __$$ReceiveNewMessageImplCopyWithImpl<_$ReceiveNewMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String messageContent, ChatDetailModel chatDetails)
        sendMessage,
    required TResult Function(int chatId) fetchChatDetails,
    required TResult Function(MessageModel newMessage) receiveNewMessage,
    required TResult Function(String url, String fileName) downloadFile,
  }) {
    return receiveNewMessage(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult? Function(int chatId)? fetchChatDetails,
    TResult? Function(MessageModel newMessage)? receiveNewMessage,
    TResult? Function(String url, String fileName)? downloadFile,
  }) {
    return receiveNewMessage?.call(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult Function(int chatId)? fetchChatDetails,
    TResult Function(MessageModel newMessage)? receiveNewMessage,
    TResult Function(String url, String fileName)? downloadFile,
    required TResult orElse(),
  }) {
    if (receiveNewMessage != null) {
      return receiveNewMessage(newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FetchChatDetails value) fetchChatDetails,
    required TResult Function(_ReceiveNewMessage value) receiveNewMessage,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return receiveNewMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_FetchChatDetails value)? fetchChatDetails,
    TResult? Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return receiveNewMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FetchChatDetails value)? fetchChatDetails,
    TResult Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (receiveNewMessage != null) {
      return receiveNewMessage(this);
    }
    return orElse();
  }
}

abstract class _ReceiveNewMessage implements ChatDetailEvent {
  const factory _ReceiveNewMessage(final MessageModel newMessage) =
      _$ReceiveNewMessageImpl;

  MessageModel get newMessage;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveNewMessageImplCopyWith<_$ReceiveNewMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadFileImplCopyWith<$Res> {
  factory _$$DownloadFileImplCopyWith(
          _$DownloadFileImpl value, $Res Function(_$DownloadFileImpl) then) =
      __$$DownloadFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, String fileName});
}

/// @nodoc
class __$$DownloadFileImplCopyWithImpl<$Res>
    extends _$ChatDetailEventCopyWithImpl<$Res, _$DownloadFileImpl>
    implements _$$DownloadFileImplCopyWith<$Res> {
  __$$DownloadFileImplCopyWithImpl(
      _$DownloadFileImpl _value, $Res Function(_$DownloadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? fileName = null,
  }) {
    return _then(_$DownloadFileImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadFileImpl implements _DownloadFile {
  const _$DownloadFileImpl(this.url, this.fileName);

  @override
  final String url;
  @override
  final String fileName;

  @override
  String toString() {
    return 'ChatDetailEvent.downloadFile(url: $url, fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadFileImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, fileName);

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      __$$DownloadFileImplCopyWithImpl<_$DownloadFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String messageContent, ChatDetailModel chatDetails)
        sendMessage,
    required TResult Function(int chatId) fetchChatDetails,
    required TResult Function(MessageModel newMessage) receiveNewMessage,
    required TResult Function(String url, String fileName) downloadFile,
  }) {
    return downloadFile(url, fileName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult? Function(int chatId)? fetchChatDetails,
    TResult? Function(MessageModel newMessage)? receiveNewMessage,
    TResult? Function(String url, String fileName)? downloadFile,
  }) {
    return downloadFile?.call(url, fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messageContent, ChatDetailModel chatDetails)?
        sendMessage,
    TResult Function(int chatId)? fetchChatDetails,
    TResult Function(MessageModel newMessage)? receiveNewMessage,
    TResult Function(String url, String fileName)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(url, fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_FetchChatDetails value) fetchChatDetails,
    required TResult Function(_ReceiveNewMessage value) receiveNewMessage,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return downloadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_FetchChatDetails value)? fetchChatDetails,
    TResult? Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return downloadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_FetchChatDetails value)? fetchChatDetails,
    TResult Function(_ReceiveNewMessage value)? receiveNewMessage,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(this);
    }
    return orElse();
  }
}

abstract class _DownloadFile implements ChatDetailEvent {
  const factory _DownloadFile(final String url, final String fileName) =
      _$DownloadFileImpl;

  String get url;
  String get fileName;

  /// Create a copy of ChatDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatDetailModel chatDetails) loaded,
    required TResult Function() sendingMessage,
    required TResult Function() messageSent,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatDetailModel chatDetails)? loaded,
    TResult? Function()? sendingMessage,
    TResult? Function()? messageSent,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatDetailModel chatDetails)? loaded,
    TResult Function()? sendingMessage,
    TResult Function()? messageSent,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SendingMessage value) sendingMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SendingMessage value)? sendingMessage,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SendingMessage value)? sendingMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailStateCopyWith<$Res> {
  factory $ChatDetailStateCopyWith(
          ChatDetailState value, $Res Function(ChatDetailState) then) =
      _$ChatDetailStateCopyWithImpl<$Res, ChatDetailState>;
}

/// @nodoc
class _$ChatDetailStateCopyWithImpl<$Res, $Val extends ChatDetailState>
    implements $ChatDetailStateCopyWith<$Res> {
  _$ChatDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatDetailModel chatDetails) loaded,
    required TResult Function() sendingMessage,
    required TResult Function() messageSent,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatDetailModel chatDetails)? loaded,
    TResult? Function()? sendingMessage,
    TResult? Function()? messageSent,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatDetailModel chatDetails)? loaded,
    TResult Function()? sendingMessage,
    TResult Function()? messageSent,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SendingMessage value) sendingMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SendingMessage value)? sendingMessage,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SendingMessage value)? sendingMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ChatDetailState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatDetailModel chatDetails) loaded,
    required TResult Function() sendingMessage,
    required TResult Function() messageSent,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatDetailModel chatDetails)? loaded,
    TResult? Function()? sendingMessage,
    TResult? Function()? messageSent,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatDetailModel chatDetails)? loaded,
    TResult Function()? sendingMessage,
    TResult Function()? messageSent,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SendingMessage value) sendingMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SendingMessage value)? sendingMessage,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SendingMessage value)? sendingMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ChatDetailState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatDetailModel chatDetails});

  $ChatDetailModelCopyWith<$Res> get chatDetails;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatDetails = null,
  }) {
    return _then(_$LoadedImpl(
      null == chatDetails
          ? _value.chatDetails
          : chatDetails // ignore: cast_nullable_to_non_nullable
              as ChatDetailModel,
    ));
  }

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatDetailModelCopyWith<$Res> get chatDetails {
    return $ChatDetailModelCopyWith<$Res>(_value.chatDetails, (value) {
      return _then(_value.copyWith(chatDetails: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(this.chatDetails);

  @override
  final ChatDetailModel chatDetails;

  @override
  String toString() {
    return 'ChatDetailState.loaded(chatDetails: $chatDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.chatDetails, chatDetails) ||
                other.chatDetails == chatDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatDetails);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatDetailModel chatDetails) loaded,
    required TResult Function() sendingMessage,
    required TResult Function() messageSent,
    required TResult Function(String errorMessage) failure,
  }) {
    return loaded(chatDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatDetailModel chatDetails)? loaded,
    TResult? Function()? sendingMessage,
    TResult? Function()? messageSent,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loaded?.call(chatDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatDetailModel chatDetails)? loaded,
    TResult Function()? sendingMessage,
    TResult Function()? messageSent,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chatDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SendingMessage value) sendingMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SendingMessage value)? sendingMessage,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SendingMessage value)? sendingMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ChatDetailState {
  const factory Loaded(final ChatDetailModel chatDetails) = _$LoadedImpl;

  ChatDetailModel get chatDetails;

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendingMessageImplCopyWith<$Res> {
  factory _$$SendingMessageImplCopyWith(_$SendingMessageImpl value,
          $Res Function(_$SendingMessageImpl) then) =
      __$$SendingMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingMessageImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$SendingMessageImpl>
    implements _$$SendingMessageImplCopyWith<$Res> {
  __$$SendingMessageImplCopyWithImpl(
      _$SendingMessageImpl _value, $Res Function(_$SendingMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendingMessageImpl implements SendingMessage {
  const _$SendingMessageImpl();

  @override
  String toString() {
    return 'ChatDetailState.sendingMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatDetailModel chatDetails) loaded,
    required TResult Function() sendingMessage,
    required TResult Function() messageSent,
    required TResult Function(String errorMessage) failure,
  }) {
    return sendingMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatDetailModel chatDetails)? loaded,
    TResult? Function()? sendingMessage,
    TResult? Function()? messageSent,
    TResult? Function(String errorMessage)? failure,
  }) {
    return sendingMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatDetailModel chatDetails)? loaded,
    TResult Function()? sendingMessage,
    TResult Function()? messageSent,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (sendingMessage != null) {
      return sendingMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SendingMessage value) sendingMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(Failure value) failure,
  }) {
    return sendingMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SendingMessage value)? sendingMessage,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(Failure value)? failure,
  }) {
    return sendingMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SendingMessage value)? sendingMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (sendingMessage != null) {
      return sendingMessage(this);
    }
    return orElse();
  }
}

abstract class SendingMessage implements ChatDetailState {
  const factory SendingMessage() = _$SendingMessageImpl;
}

/// @nodoc
abstract class _$$MessageSentImplCopyWith<$Res> {
  factory _$$MessageSentImplCopyWith(
          _$MessageSentImpl value, $Res Function(_$MessageSentImpl) then) =
      __$$MessageSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageSentImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$MessageSentImpl>
    implements _$$MessageSentImplCopyWith<$Res> {
  __$$MessageSentImplCopyWithImpl(
      _$MessageSentImpl _value, $Res Function(_$MessageSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MessageSentImpl implements MessageSent {
  const _$MessageSentImpl();

  @override
  String toString() {
    return 'ChatDetailState.messageSent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatDetailModel chatDetails) loaded,
    required TResult Function() sendingMessage,
    required TResult Function() messageSent,
    required TResult Function(String errorMessage) failure,
  }) {
    return messageSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatDetailModel chatDetails)? loaded,
    TResult? Function()? sendingMessage,
    TResult? Function()? messageSent,
    TResult? Function(String errorMessage)? failure,
  }) {
    return messageSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatDetailModel chatDetails)? loaded,
    TResult Function()? sendingMessage,
    TResult Function()? messageSent,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SendingMessage value) sendingMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(Failure value) failure,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SendingMessage value)? sendingMessage,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(Failure value)? failure,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SendingMessage value)? sendingMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements ChatDetailState {
  const factory MessageSent() = _$MessageSentImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ChatDetailStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$FailureImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChatDetailState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatDetailModel chatDetails) loaded,
    required TResult Function() sendingMessage,
    required TResult Function() messageSent,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatDetailModel chatDetails)? loaded,
    TResult? Function()? sendingMessage,
    TResult? Function()? messageSent,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatDetailModel chatDetails)? loaded,
    TResult Function()? sendingMessage,
    TResult Function()? messageSent,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(SendingMessage value) sendingMessage,
    required TResult Function(MessageSent value) messageSent,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(SendingMessage value)? sendingMessage,
    TResult? Function(MessageSent value)? messageSent,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(SendingMessage value)? sendingMessage,
    TResult Function(MessageSent value)? messageSent,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements ChatDetailState {
  const factory Failure(final String errorMessage) = _$FailureImpl;

  String get errorMessage;

  /// Create a copy of ChatDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
