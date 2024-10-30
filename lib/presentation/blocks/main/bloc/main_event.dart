part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.pageChanged(MainPageEnum page) = _PageChanged;
  const factory MainEvent.hideShowNavBar(bool hideShowNavBar) = _HideShowNavBar;
  const factory MainEvent.updateDriveButton(int id) = _UpdateDriveButton;
  const factory MainEvent.checkConnection() = _CheckConnection;
  const factory MainEvent.initializeApp() = _InitializeApp;

  const factory MainEvent.updateSelectedPage(MainPageEnum selectedPage,
      [int? tabPage]) = _UpdateSelectedPage;
}
