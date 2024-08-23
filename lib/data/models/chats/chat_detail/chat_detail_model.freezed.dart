// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatDetailModel _$ChatDetailModelFromJson(Map<String, dynamic> json) {
  return _ChatDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ChatDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get subjectType => throw _privateConstructorUsedError;
  int get subjectId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get actionButtonType => throw _privateConstructorUsedError;
  String? get actionButtonValue => throw _privateConstructorUsedError;
  String? get firstUnreadMessageId => throw _privateConstructorUsedError;
  List<ChatParticipant> get participants => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDetailModelCopyWith<ChatDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailModelCopyWith<$Res> {
  factory $ChatDetailModelCopyWith(
          ChatDetailModel value, $Res Function(ChatDetailModel) then) =
      _$ChatDetailModelCopyWithImpl<$Res, ChatDetailModel>;
  @useResult
  $Res call(
      {int id,
      String subjectType,
      int subjectId,
      String title,
      String? photoUrl,
      String? actionButtonType,
      String? actionButtonValue,
      String? firstUnreadMessageId,
      List<ChatParticipant> participants,
      List<MessageModel> messages});
}

/// @nodoc
class _$ChatDetailModelCopyWithImpl<$Res, $Val extends ChatDetailModel>
    implements $ChatDetailModelCopyWith<$Res> {
  _$ChatDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subjectType = null,
    Object? subjectId = null,
    Object? title = null,
    Object? photoUrl = freezed,
    Object? actionButtonType = freezed,
    Object? actionButtonValue = freezed,
    Object? firstUnreadMessageId = freezed,
    Object? participants = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subjectType: null == subjectType
          ? _value.subjectType
          : subjectType // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actionButtonType: freezed == actionButtonType
          ? _value.actionButtonType
          : actionButtonType // ignore: cast_nullable_to_non_nullable
              as String?,
      actionButtonValue: freezed == actionButtonValue
          ? _value.actionButtonValue
          : actionButtonValue // ignore: cast_nullable_to_non_nullable
              as String?,
      firstUnreadMessageId: freezed == firstUnreadMessageId
          ? _value.firstUnreadMessageId
          : firstUnreadMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChatParticipant>,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDetailModelImplCopyWith<$Res>
    implements $ChatDetailModelCopyWith<$Res> {
  factory _$$ChatDetailModelImplCopyWith(_$ChatDetailModelImpl value,
          $Res Function(_$ChatDetailModelImpl) then) =
      __$$ChatDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String subjectType,
      int subjectId,
      String title,
      String? photoUrl,
      String? actionButtonType,
      String? actionButtonValue,
      String? firstUnreadMessageId,
      List<ChatParticipant> participants,
      List<MessageModel> messages});
}

/// @nodoc
class __$$ChatDetailModelImplCopyWithImpl<$Res>
    extends _$ChatDetailModelCopyWithImpl<$Res, _$ChatDetailModelImpl>
    implements _$$ChatDetailModelImplCopyWith<$Res> {
  __$$ChatDetailModelImplCopyWithImpl(
      _$ChatDetailModelImpl _value, $Res Function(_$ChatDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subjectType = null,
    Object? subjectId = null,
    Object? title = null,
    Object? photoUrl = freezed,
    Object? actionButtonType = freezed,
    Object? actionButtonValue = freezed,
    Object? firstUnreadMessageId = freezed,
    Object? participants = null,
    Object? messages = null,
  }) {
    return _then(_$ChatDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subjectType: null == subjectType
          ? _value.subjectType
          : subjectType // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      actionButtonType: freezed == actionButtonType
          ? _value.actionButtonType
          : actionButtonType // ignore: cast_nullable_to_non_nullable
              as String?,
      actionButtonValue: freezed == actionButtonValue
          ? _value.actionButtonValue
          : actionButtonValue // ignore: cast_nullable_to_non_nullable
              as String?,
      firstUnreadMessageId: freezed == firstUnreadMessageId
          ? _value.firstUnreadMessageId
          : firstUnreadMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChatParticipant>,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDetailModelImpl implements _ChatDetailModel {
  const _$ChatDetailModelImpl(
      {required this.id,
      required this.subjectType,
      required this.subjectId,
      required this.title,
      this.photoUrl,
      this.actionButtonType,
      this.actionButtonValue,
      this.firstUnreadMessageId,
      required final List<ChatParticipant> participants,
      required final List<MessageModel> messages})
      : _participants = participants,
        _messages = messages;

  factory _$ChatDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String subjectType;
  @override
  final int subjectId;
  @override
  final String title;
  @override
  final String? photoUrl;
  @override
  final String? actionButtonType;
  @override
  final String? actionButtonValue;
  @override
  final String? firstUnreadMessageId;
  final List<ChatParticipant> _participants;
  @override
  List<ChatParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatDetailModel(id: $id, subjectType: $subjectType, subjectId: $subjectId, title: $title, photoUrl: $photoUrl, actionButtonType: $actionButtonType, actionButtonValue: $actionButtonValue, firstUnreadMessageId: $firstUnreadMessageId, participants: $participants, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subjectType, subjectType) ||
                other.subjectType == subjectType) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.actionButtonType, actionButtonType) ||
                other.actionButtonType == actionButtonType) &&
            (identical(other.actionButtonValue, actionButtonValue) ||
                other.actionButtonValue == actionButtonValue) &&
            (identical(other.firstUnreadMessageId, firstUnreadMessageId) ||
                other.firstUnreadMessageId == firstUnreadMessageId) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      subjectType,
      subjectId,
      title,
      photoUrl,
      actionButtonType,
      actionButtonValue,
      firstUnreadMessageId,
      const DeepCollectionEquality().hash(_participants),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailModelImplCopyWith<_$ChatDetailModelImpl> get copyWith =>
      __$$ChatDetailModelImplCopyWithImpl<_$ChatDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ChatDetailModel implements ChatDetailModel {
  const factory _ChatDetailModel(
      {required final int id,
      required final String subjectType,
      required final int subjectId,
      required final String title,
      final String? photoUrl,
      final String? actionButtonType,
      final String? actionButtonValue,
      final String? firstUnreadMessageId,
      required final List<ChatParticipant> participants,
      required final List<MessageModel> messages}) = _$ChatDetailModelImpl;

  factory _ChatDetailModel.fromJson(Map<String, dynamic> json) =
      _$ChatDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get subjectType;
  @override
  int get subjectId;
  @override
  String get title;
  @override
  String? get photoUrl;
  @override
  String? get actionButtonType;
  @override
  String? get actionButtonValue;
  @override
  String? get firstUnreadMessageId;
  @override
  List<ChatParticipant> get participants;
  @override
  List<MessageModel> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatDetailModelImplCopyWith<_$ChatDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  int get id => throw _privateConstructorUsedError;
  ChatParticipant get sender => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<ChatDocument>? get documents => throw _privateConstructorUsedError;
  int get sentAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {int id,
      ChatParticipant sender,
      String content,
      List<ChatDocument>? documents,
      int sentAt});

  $ChatParticipantCopyWith<$Res> get sender;
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? content = null,
    Object? documents = freezed,
    Object? sentAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatParticipant,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ChatDocument>?,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatParticipantCopyWith<$Res> get sender {
    return $ChatParticipantCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ChatParticipant sender,
      String content,
      List<ChatDocument>? documents,
      int sentAt});

  @override
  $ChatParticipantCopyWith<$Res> get sender;
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? content = null,
    Object? documents = freezed,
    Object? sentAt = null,
  }) {
    return _then(_$MessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as ChatParticipant,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<ChatDocument>?,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {required this.id,
      required this.sender,
      required this.content,
      final List<ChatDocument>? documents,
      required this.sentAt})
      : _documents = documents;

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final int id;
  @override
  final ChatParticipant sender;
  @override
  final String content;
  final List<ChatDocument>? _documents;
  @override
  List<ChatDocument>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int sentAt;

  @override
  String toString() {
    return 'MessageModel(id: $id, sender: $sender, content: $content, documents: $documents, sentAt: $sentAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sender, content,
      const DeepCollectionEquality().hash(_documents), sentAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required final int id,
      required final ChatParticipant sender,
      required final String content,
      final List<ChatDocument>? documents,
      required final int sentAt}) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  int get id;
  @override
  ChatParticipant get sender;
  @override
  String get content;
  @override
  List<ChatDocument>? get documents;
  @override
  int get sentAt;
  @override
  @JsonKey(ignore: true)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatDocument _$ChatDocumentFromJson(Map<String, dynamic> json) {
  return _ChatDocument.fromJson(json);
}

/// @nodoc
mixin _$ChatDocument {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get originalFilename => throw _privateConstructorUsedError;
  int? get sizeInBytes => throw _privateConstructorUsedError;
  String? get ext => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get downloadUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatDocumentCopyWith<ChatDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDocumentCopyWith<$Res> {
  factory $ChatDocumentCopyWith(
          ChatDocument value, $Res Function(ChatDocument) then) =
      _$ChatDocumentCopyWithImpl<$Res, ChatDocument>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? originalFilename,
      int? sizeInBytes,
      String? ext,
      String? thumbnailUrl,
      String? downloadUrl});
}

/// @nodoc
class _$ChatDocumentCopyWithImpl<$Res, $Val extends ChatDocument>
    implements $ChatDocumentCopyWith<$Res> {
  _$ChatDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originalFilename = freezed,
    Object? sizeInBytes = freezed,
    Object? ext = freezed,
    Object? thumbnailUrl = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalFilename: freezed == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeInBytes: freezed == sizeInBytes
          ? _value.sizeInBytes
          : sizeInBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDocumentImplCopyWith<$Res>
    implements $ChatDocumentCopyWith<$Res> {
  factory _$$ChatDocumentImplCopyWith(
          _$ChatDocumentImpl value, $Res Function(_$ChatDocumentImpl) then) =
      __$$ChatDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? originalFilename,
      int? sizeInBytes,
      String? ext,
      String? thumbnailUrl,
      String? downloadUrl});
}

/// @nodoc
class __$$ChatDocumentImplCopyWithImpl<$Res>
    extends _$ChatDocumentCopyWithImpl<$Res, _$ChatDocumentImpl>
    implements _$$ChatDocumentImplCopyWith<$Res> {
  __$$ChatDocumentImplCopyWithImpl(
      _$ChatDocumentImpl _value, $Res Function(_$ChatDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? originalFilename = freezed,
    Object? sizeInBytes = freezed,
    Object? ext = freezed,
    Object? thumbnailUrl = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(_$ChatDocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalFilename: freezed == originalFilename
          ? _value.originalFilename
          : originalFilename // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeInBytes: freezed == sizeInBytes
          ? _value.sizeInBytes
          : sizeInBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadUrl: freezed == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDocumentImpl implements _ChatDocument {
  const _$ChatDocumentImpl(
      {required this.id,
      required this.name,
      this.originalFilename,
      this.sizeInBytes,
      this.ext,
      this.thumbnailUrl,
      this.downloadUrl});

  factory _$ChatDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDocumentImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? originalFilename;
  @override
  final int? sizeInBytes;
  @override
  final String? ext;
  @override
  final String? thumbnailUrl;
  @override
  final String? downloadUrl;

  @override
  String toString() {
    return 'ChatDocument(id: $id, name: $name, originalFilename: $originalFilename, sizeInBytes: $sizeInBytes, ext: $ext, thumbnailUrl: $thumbnailUrl, downloadUrl: $downloadUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalFilename, originalFilename) ||
                other.originalFilename == originalFilename) &&
            (identical(other.sizeInBytes, sizeInBytes) ||
                other.sizeInBytes == sizeInBytes) &&
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, originalFilename,
      sizeInBytes, ext, thumbnailUrl, downloadUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDocumentImplCopyWith<_$ChatDocumentImpl> get copyWith =>
      __$$ChatDocumentImplCopyWithImpl<_$ChatDocumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDocumentImplToJson(
      this,
    );
  }
}

abstract class _ChatDocument implements ChatDocument {
  const factory _ChatDocument(
      {required final int id,
      required final String name,
      final String? originalFilename,
      final int? sizeInBytes,
      final String? ext,
      final String? thumbnailUrl,
      final String? downloadUrl}) = _$ChatDocumentImpl;

  factory _ChatDocument.fromJson(Map<String, dynamic> json) =
      _$ChatDocumentImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get originalFilename;
  @override
  int? get sizeInBytes;
  @override
  String? get ext;
  @override
  String? get thumbnailUrl;
  @override
  String? get downloadUrl;
  @override
  @JsonKey(ignore: true)
  _$$ChatDocumentImplCopyWith<_$ChatDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
