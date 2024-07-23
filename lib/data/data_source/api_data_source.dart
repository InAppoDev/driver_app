import 'package:tms_driver/data/models/user_model.dart';

abstract class ApiDataSource {
  Future<String> ping();
  Future<Map<String, dynamic>> getConfig();
  Future<void> requestAuthCode(String phone, {bool useEmail = false});
  Future<String> verifyAuth(String authCode, String verificationCode);
  Future<UserModel> getUser();
}
