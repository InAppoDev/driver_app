part of 'login_bloc.dart';

enum LoginStatus { initial, loading, codeSent, authenticated, failure }

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String username,
    required String code,
    required String authCode,
    required LoginStatus status,
    String? errorMessage,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        username: '',
        code: '',
        authCode: '',
        status: LoginStatus.initial,
      );
}
