part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.pageChanged(MainPageEnum page) = _PageChanged;
  const factory MainEvent.hideShowNavBar(bool hideShowNavBar) = _HideShowNavBar;
  const factory MainEvent.checkConnection() =
      _CheckConnection; // New event for checking connection
}
