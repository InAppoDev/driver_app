import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String firstName,
    required String lastName,
    String? photo,
    required String phone,
    required String email,
    required String address,
    required String city,
    required String stateCode,
    required String zipCode,
    String? emergencyPhone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
