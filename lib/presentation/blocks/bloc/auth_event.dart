part of 'auth_bloc.dart';

@freezed
@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginButtonPressed({required String username}) =
      LoginButtonPressed;
}
