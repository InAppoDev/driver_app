
part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.startAnimation({required bool startAnimation}) =
  _StartAnimation;
}
