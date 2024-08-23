// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  LastMessageModel? get lastMessage => throw _privateConstructorUsedError;
  int? get unreadMessagesCount => throw _privateConstructorUsedError;
  int? get orderWeight => throw _privateConstructorUsedError;
  int? get lastUpdatedAt => throw _privateConstructorUsedError;
  List<ChatParticipant> get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? photoUrl,
      LastMessageModel? lastMessage,
      int? unreadMessagesCount,
      int? orderWeight,
      int? lastUpdatedAt,
      List<ChatParticipant> participants});

  $LastMessageModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? photoUrl = freezed,
    Object? lastMessage = freezed,
    Object? unreadMessagesCount = freezed,
    Object? orderWeight = freezed,
    Object? lastUpdatedAt = freezed,
    Object? participants = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessageModel?,
      unreadMessagesCount: freezed == unreadMessagesCount
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      orderWeight: freezed == orderWeight
          ? _value.orderWeight
          : orderWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChatParticipant>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LastMessageModelCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $LastMessageModelCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
          _$ChatModelImpl value, $Res Function(_$ChatModelImpl) then) =
      __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? photoUrl,
      LastMessageModel? lastMessage,
      int? unreadMessagesCount,
      int? orderWeight,
      int? lastUpdatedAt,
      List<ChatParticipant> participants});

  @override
  $LastMessageModelCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
      _$ChatModelImpl _value, $Res Function(_$ChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? photoUrl = freezed,
    Object? lastMessage = freezed,
    Object? unreadMessagesCount = freezed,
    Object? orderWeight = freezed,
    Object? lastUpdatedAt = freezed,
    Object? participants = null,
  }) {
    return _then(_$ChatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessageModel?,
      unreadMessagesCount: freezed == unreadMessagesCount
          ? _value.unreadMessagesCount
          : unreadMessagesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      orderWeight: freezed == orderWeight
          ? _value.orderWeight
          : orderWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      lastUpdatedAt: freezed == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as int?,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<ChatParticipant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl implements _ChatModel {
  const _$ChatModelImpl(
      {required this.id,
      required this.title,
      this.photoUrl,
      this.lastMessage,
      this.unreadMessagesCount,
      this.orderWeight,
      this.lastUpdatedAt,
      required final List<ChatParticipant> participants})
      : _participants = participants;

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? photoUrl;
  @override
  final LastMessageModel? lastMessage;
  @override
  final int? unreadMessagesCount;
  @override
  final int? orderWeight;
  @override
  final int? lastUpdatedAt;
  final List<ChatParticipant> _participants;
  @override
  List<ChatParticipant> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'ChatModel(id: $id, title: $title, photoUrl: $photoUrl, lastMessage: $lastMessage, unreadMessagesCount: $unreadMessagesCount, orderWeight: $orderWeight, lastUpdatedAt: $lastUpdatedAt, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.unreadMessagesCount, unreadMessagesCount) ||
                other.unreadMessagesCount == unreadMessagesCount) &&
            (identical(other.orderWeight, orderWeight) ||
                other.orderWeight == orderWeight) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      photoUrl,
      lastMessage,
      unreadMessagesCount,
      orderWeight,
      lastUpdatedAt,
      const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(
      this,
    );
  }
}

abstract class _ChatModel implements ChatModel {
  const factory _ChatModel(
      {required final int id,
      required final String title,
      final String? photoUrl,
      final LastMessageModel? lastMessage,
      final int? unreadMessagesCount,
      final int? orderWeight,
      final int? lastUpdatedAt,
      required final List<ChatParticipant> participants}) = _$ChatModelImpl;

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get photoUrl;
  @override
  LastMessageModel? get lastMessage;
  @override
  int? get unreadMessagesCount;
  @override
  int? get orderWeight;
  @override
  int? get lastUpdatedAt;
  @override
  List<ChatParticipant> get participants;
  @override
  @JsonKey(ignore: true)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LastMessageModel _$LastMessageModelFromJson(Map<String, dynamic> json) {
  return _LastMessageModel.fromJson(json);
}

/// @nodoc
mixin _$LastMessageModel {
  String get previewText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastMessageModelCopyWith<LastMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastMessageModelCopyWith<$Res> {
  factory $LastMessageModelCopyWith(
          LastMessageModel value, $Res Function(LastMessageModel) then) =
      _$LastMessageModelCopyWithImpl<$Res, LastMessageModel>;
  @useResult
  $Res call({String previewText});
}

/// @nodoc
class _$LastMessageModelCopyWithImpl<$Res, $Val extends LastMessageModel>
    implements $LastMessageModelCopyWith<$Res> {
  _$LastMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previewText = null,
  }) {
    return _then(_value.copyWith(
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastMessageModelImplCopyWith<$Res>
    implements $LastMessageModelCopyWith<$Res> {
  factory _$$LastMessageModelImplCopyWith(_$LastMessageModelImpl value,
          $Res Function(_$LastMessageModelImpl) then) =
      __$$LastMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String previewText});
}

/// @nodoc
class __$$LastMessageModelImplCopyWithImpl<$Res>
    extends _$LastMessageModelCopyWithImpl<$Res, _$LastMessageModelImpl>
    implements _$$LastMessageModelImplCopyWith<$Res> {
  __$$LastMessageModelImplCopyWithImpl(_$LastMessageModelImpl _value,
      $Res Function(_$LastMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? previewText = null,
  }) {
    return _then(_$LastMessageModelImpl(
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastMessageModelImpl implements _LastMessageModel {
  const _$LastMessageModelImpl({required this.previewText});

  factory _$LastMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastMessageModelImplFromJson(json);

  @override
  final String previewText;

  @override
  String toString() {
    return 'LastMessageModel(previewText: $previewText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastMessageModelImpl &&
            (identical(other.previewText, previewText) ||
                other.previewText == previewText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, previewText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastMessageModelImplCopyWith<_$LastMessageModelImpl> get copyWith =>
      __$$LastMessageModelImplCopyWithImpl<_$LastMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastMessageModelImplToJson(
      this,
    );
  }
}

abstract class _LastMessageModel implements LastMessageModel {
  const factory _LastMessageModel({required final String previewText}) =
      _$LastMessageModelImpl;

  factory _LastMessageModel.fromJson(Map<String, dynamic> json) =
      _$LastMessageModelImpl.fromJson;

  @override
  String get previewText;
  @override
  @JsonKey(ignore: true)
  _$$LastMessageModelImplCopyWith<_$LastMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatParticipant _$ChatParticipantFromJson(Map<String, dynamic> json) {
  return _ChatParticipant.fromJson(json);
}

/// @nodoc
mixin _$ChatParticipant {
  int get senderId => throw _privateConstructorUsedError;
  String get senderType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatParticipantCopyWith<ChatParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatParticipantCopyWith<$Res> {
  factory $ChatParticipantCopyWith(
          ChatParticipant value, $Res Function(ChatParticipant) then) =
      _$ChatParticipantCopyWithImpl<$Res, ChatParticipant>;
  @useResult
  $Res call({int senderId, String senderType, String name, String? avatarUrl});
}

/// @nodoc
class _$ChatParticipantCopyWithImpl<$Res, $Val extends ChatParticipant>
    implements $ChatParticipantCopyWith<$Res> {
  _$ChatParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? senderType = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatParticipantImplCopyWith<$Res>
    implements $ChatParticipantCopyWith<$Res> {
  factory _$$ChatParticipantImplCopyWith(_$ChatParticipantImpl value,
          $Res Function(_$ChatParticipantImpl) then) =
      __$$ChatParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int senderId, String senderType, String name, String? avatarUrl});
}

/// @nodoc
class __$$ChatParticipantImplCopyWithImpl<$Res>
    extends _$ChatParticipantCopyWithImpl<$Res, _$ChatParticipantImpl>
    implements _$$ChatParticipantImplCopyWith<$Res> {
  __$$ChatParticipantImplCopyWithImpl(
      _$ChatParticipantImpl _value, $Res Function(_$ChatParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = null,
    Object? senderType = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$ChatParticipantImpl(
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int,
      senderType: null == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatParticipantImpl implements _ChatParticipant {
  const _$ChatParticipantImpl(
      {required this.senderId,
      required this.senderType,
      required this.name,
      this.avatarUrl});

  factory _$ChatParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatParticipantImplFromJson(json);

  @override
  final int senderId;
  @override
  final String senderType;
  @override
  final String name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'ChatParticipant(senderId: $senderId, senderType: $senderType, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatParticipantImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, senderId, senderType, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatParticipantImplCopyWith<_$ChatParticipantImpl> get copyWith =>
      __$$ChatParticipantImplCopyWithImpl<_$ChatParticipantImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatParticipantImplToJson(
      this,
    );
  }
}

abstract class _ChatParticipant implements ChatParticipant {
  const factory _ChatParticipant(
      {required final int senderId,
      required final String senderType,
      required final String name,
      final String? avatarUrl}) = _$ChatParticipantImpl;

  factory _ChatParticipant.fromJson(Map<String, dynamic> json) =
      _$ChatParticipantImpl.fromJson;

  @override
  int get senderId;
  @override
  String get senderType;
  @override
  String get name;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$ChatParticipantImplCopyWith<_$ChatParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
