part of 'main_bloc.dart';

enum MainPageEnum { home, trips, messages, profile }

@freezed
class MainState with _$MainState {
  const factory MainState({
    required MainPageEnum selectedPage,
    required bool showNavBar,
    required bool isConnected,
    required bool isDriveStarted,
  }) = _MainState;

  factory MainState.initial() => const MainState(
        selectedPage: MainPageEnum.home,
        showNavBar: true,
        isConnected: true,
        isDriveStarted: false,
      );
}
