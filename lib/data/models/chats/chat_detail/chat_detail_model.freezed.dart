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
  @JsonKey(name: 'subject_type')
  String get subjectType => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_id')
  int get subjectId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_button_type')
  String? get actionButtonType => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_button_value')
  String? get actionButtonValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_unread_message_id')
  int? get firstUnreadMessageId => throw _privateConstructorUsedError;
  List<ChatParticipant> get participants => throw _privateConstructorUsedError;
  List<MessageModel> get messages => throw _privateConstructorUsedError;

  /// Serializes this ChatDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @JsonKey(name: 'subject_type') String subjectType,
      @JsonKey(name: 'subject_id') int subjectId,
      String title,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'action_button_type') String? actionButtonType,
      @JsonKey(name: 'action_button_value') String? actionButtonValue,
      @JsonKey(name: 'first_unread_message_id') int? firstUnreadMessageId,
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

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
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
              as int?,
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
      @JsonKey(name: 'subject_type') String subjectType,
      @JsonKey(name: 'subject_id') int subjectId,
      String title,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'action_button_type') String? actionButtonType,
      @JsonKey(name: 'action_button_value') String? actionButtonValue,
      @JsonKey(name: 'first_unread_message_id') int? firstUnreadMessageId,
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

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
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
              as int?,
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
      @JsonKey(name: 'subject_type') required this.subjectType,
      @JsonKey(name: 'subject_id') required this.subjectId,
      required this.title,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'action_button_type') this.actionButtonType,
      @JsonKey(name: 'action_button_value') this.actionButtonValue,
      @JsonKey(name: 'first_unread_message_id') this.firstUnreadMessageId,
      required final List<ChatParticipant> participants,
      required final List<MessageModel> messages})
      : _participants = participants,
        _messages = messages;

  factory _$ChatDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'subject_type')
  final String subjectType;
  @override
  @JsonKey(name: 'subject_id')
  final int subjectId;
  @override
  final String title;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'action_button_type')
  final String? actionButtonType;
  @override
  @JsonKey(name: 'action_button_value')
  final String? actionButtonValue;
  @override
  @JsonKey(name: 'first_unread_message_id')
  final int? firstUnreadMessageId;
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      @JsonKey(name: 'subject_type') required final String subjectType,
      @JsonKey(name: 'subject_id') required final int subjectId,
      required final String title,
      @JsonKey(name: 'photo_url') final String? photoUrl,
      @JsonKey(name: 'action_button_type') final String? actionButtonType,
      @JsonKey(name: 'action_button_value') final String? actionButtonValue,
      @JsonKey(name: 'first_unread_message_id') final int? firstUnreadMessageId,
      required final List<ChatParticipant> participants,
      required final List<MessageModel> messages}) = _$ChatDetailModelImpl;

  factory _ChatDetailModel.fromJson(Map<String, dynamic> json) =
      _$ChatDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'subject_type')
  String get subjectType;
  @override
  @JsonKey(name: 'subject_id')
  int get subjectId;
  @override
  String get title;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'action_button_type')
  String? get actionButtonType;
  @override
  @JsonKey(name: 'action_button_value')
  String? get actionButtonValue;
  @override
  @JsonKey(name: 'first_unread_message_id')
  int? get firstUnreadMessageId;
  @override
  List<ChatParticipant> get participants;
  @override
  List<MessageModel> get messages;

  /// Create a copy of ChatDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDetailModelImplCopyWith<_$ChatDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
