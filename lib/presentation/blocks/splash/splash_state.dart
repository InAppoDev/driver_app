part of 'splash_bloc.dart';

enum SplashStatus {
  initial,
  loading,
  authenticated,
  unauthenticated,
  failure,
}

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    required SplashStatus status,
    String? errorMessage,
  }) = _SplashState;

  factory SplashState.initial() => const SplashState(
        status: SplashStatus.initial,
      );
}
