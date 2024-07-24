// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'city') required String city,
    @JsonKey(name: 'state_code') required String stateCode,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'emergency_phone') String? emergencyPhone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
