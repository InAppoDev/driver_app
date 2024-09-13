part of 'user_bloc.dart';

enum UserStatus { initial, loading, loaded, error }

@freezed
class UserState with _$UserState {
  const factory UserState({
    required UserStatus status,
    UserModel? user,
    String? errorMessage,
  }) = _UserState;

  factory UserState.initial() => const UserState(
        status: UserStatus.initial,
      );
}
