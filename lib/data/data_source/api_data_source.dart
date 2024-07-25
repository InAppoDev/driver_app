import 'package:tms_driver/data/models/user_model.dart';

abstract class ApiDataSource {
  Future<String> ping();

  Future<Map<String, dynamic>> getConfig();

  Future<String> requestAuthCode({
    required String phone,
    bool useEmail = false,
  });

  Future<String> verifyAuth({
    required String authCode,
    required String verificationCode,
  });
  Future<UserModel> getUser();
}
