import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiDataSource apiDataSource;
  final AuthDataSource authDataSource;

  AuthRepositoryImpl({
    required this.apiDataSource,
    required this.authDataSource,
  });

  @override
  Future<void> clearTokens() async {
    return await authDataSource.clearTokens();
  }

  @override
  Future<String?> getAuthToken() async {
    return await authDataSource.getAuthToken();
  }

  @override
  Future<String> ping() async {
    return await apiDataSource.ping();
  }

  @override
  Future<String> requestAuthCode(phone, {required bool useEmail}) async {
    return await apiDataSource.requestAuthCode(
      phone: phone,
      useEmail: useEmail,
    );
  }

  @override
  Future<void> verifyAuth(String authCode, String verificationCode) async {
    String authToken = await apiDataSource.verifyAuth(
        authCode: authCode, verificationCode: verificationCode);
    await _saveAccessToken(authToken);
  }

  Future<void> _saveAccessToken(String authToken) async {
    return await authDataSource.saveAccessToken(authToken);
  }
}
