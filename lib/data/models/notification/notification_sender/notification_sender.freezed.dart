// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_sender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationSender _$NotificationSenderFromJson(Map<String, dynamic> json) {
  return _NotificationSender.fromJson(json);
}

/// @nodoc
mixin _$NotificationSender {
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_type')
  String? get senderType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this NotificationSender to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationSender
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationSenderCopyWith<NotificationSender> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSenderCopyWith<$Res> {
  factory $NotificationSenderCopyWith(
          NotificationSender value, $Res Function(NotificationSender) then) =
      _$NotificationSenderCopyWithImpl<$Res, NotificationSender>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'sender_type') String? senderType,
      String? name,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class _$NotificationSenderCopyWithImpl<$Res, $Val extends NotificationSender>
    implements $NotificationSenderCopyWith<$Res> {
  _$NotificationSenderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationSender
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? senderType = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderType: freezed == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSenderImplCopyWith<$Res>
    implements $NotificationSenderCopyWith<$Res> {
  factory _$$NotificationSenderImplCopyWith(_$NotificationSenderImpl value,
          $Res Function(_$NotificationSenderImpl) then) =
      __$$NotificationSenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'sender_type') String? senderType,
      String? name,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class __$$NotificationSenderImplCopyWithImpl<$Res>
    extends _$NotificationSenderCopyWithImpl<$Res, _$NotificationSenderImpl>
    implements _$$NotificationSenderImplCopyWith<$Res> {
  __$$NotificationSenderImplCopyWithImpl(_$NotificationSenderImpl _value,
      $Res Function(_$NotificationSenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationSender
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderId = freezed,
    Object? senderType = freezed,
    Object? name = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$NotificationSenderImpl(
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      senderType: freezed == senderType
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationSenderImpl implements _NotificationSender {
  const _$NotificationSenderImpl(
      {@JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'sender_type') this.senderType,
      this.name,
      @JsonKey(name: 'avatar_url') this.avatarUrl});

  factory _$NotificationSenderImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSenderImplFromJson(json);

  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  @JsonKey(name: 'sender_type')
  final String? senderType;
  @override
  final String? name;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  @override
  String toString() {
    return 'NotificationSender(senderId: $senderId, senderType: $senderType, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSenderImpl &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.senderType, senderType) ||
                other.senderType == senderType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, senderId, senderType, name, avatarUrl);

  /// Create a copy of NotificationSender
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSenderImplCopyWith<_$NotificationSenderImpl> get copyWith =>
      __$$NotificationSenderImplCopyWithImpl<_$NotificationSenderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSenderImplToJson(
      this,
    );
  }
}

abstract class _NotificationSender implements NotificationSender {
  const factory _NotificationSender(
          {@JsonKey(name: 'sender_id') final int? senderId,
          @JsonKey(name: 'sender_type') final String? senderType,
          final String? name,
          @JsonKey(name: 'avatar_url') final String? avatarUrl}) =
      _$NotificationSenderImpl;

  factory _NotificationSender.fromJson(Map<String, dynamic> json) =
      _$NotificationSenderImpl.fromJson;

  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  @JsonKey(name: 'sender_type')
  String? get senderType;
  @override
  String? get name;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;

  /// Create a copy of NotificationSender
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationSenderImplCopyWith<_$NotificationSenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
