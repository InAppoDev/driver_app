part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginButtonPressed({required String username}) =
      _LoginButtonPressed;
  const factory LoginEvent.codeRequested() = _CodeRequested;
  const factory LoginEvent.codeChanged({required String code}) = _CodeChanged;
  const factory LoginEvent.verifyCode({required String code}) = _VerifyCode;
  const factory LoginEvent.onboardingCompleted() = _OnboardingCompleted;
  const factory LoginEvent.checkPermissions() = _CheckPermissions;
}
