import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? photo,
    required String phone,
    required String email,
    required String address,
    required String city,
    @JsonKey(name: 'state_code') required String stateCode,
    @JsonKey(name: 'zip_code') required String zipCode,
    @JsonKey(name: 'emergency_phone') String? emergencyPhone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
