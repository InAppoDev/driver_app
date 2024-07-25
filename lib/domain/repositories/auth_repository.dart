abstract class AuthRepository {
  Future<String?> getAuthToken();

  Future<void> clearTokens();

  Future<String> ping();

  Future<String> requestAuthCode(username, {required bool useEmail});

  Future<void> verifyAuth(String authCode, String code);
}
