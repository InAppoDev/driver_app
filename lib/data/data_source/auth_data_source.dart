abstract class AuthDataSource {
  Future<String?> getAuthToken();

  Future<void> saveAccessToken(String authToken);

  Future<void> clearTokens();
}
