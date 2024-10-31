import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/services/connectivity_service.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AuthRepository authRepo = GetIt.instance<AuthRepository>();
  final TrackingRepository trackingRepo = GetIt.instance<TrackingRepository>();
  final ConnectivityService connectivityService =
      GetIt.instance<ConnectivityService>();

  List<ConnectivityResult> _lastResults = [ConnectivityResult.none];
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  MainBloc() : super(MainState.initial()) {
    on<_PageChanged>(_onPageChanged);
    on<_HideShowNavBar>(_onHideShowNavBar);
    on<_CheckConnection>(_checkConnection);
    on<_UpdateDriveButton>(_onUpdateDriveButton);
    on<_InitializeApp>(_initializeApp);
    on<_UpdateSelectedPage>(_updateSelectedPage);

    _subscribeToBlocEvents();

    _connectivitySubscription = connectivityService.connectivityStream
        .listen((List<ConnectivityResult> results) {
      _updateConnectionStatus(results);
      add(const MainEvent.checkConnection());
    });
  }

  void _updateSelectedPage(_UpdateSelectedPage event, Emitter<MainState> emit) {
    emit(state.copyWith(
      selectedPage: event.selectedPage,
      tabPage: event.tabPage,
    ));
  }

  void _subscribeToBlocEvents() {
    // notificationBloc.stream.listen((notificationState) {
    //   if (notificationState.status == NotificationStatus.loaded) {
    //     add(MainEvent.notificationUpdated(notificationState.notifications));
    //   }
    // });
  }

  Future<void> _initializeApp(
      _InitializeApp event, Emitter<MainState> emit) async {
    emit(state.copyWith());
  }

  Future<void> _onPageChanged(
      _PageChanged event, Emitter<MainState> emit) async {
    emit(state.copyWith(selectedPage: event.page));
  }

  Future<void> _onHideShowNavBar(
      _HideShowNavBar event, Emitter<MainState> emit) async {
    emit(state.copyWith(showNavBar: event.hideShowNavBar));
  }

  Future<void> _onUpdateDriveButton(
      _UpdateDriveButton event, Emitter<MainState> emit) async {
    if (state.isDriveStarted) {
      trackingRepo.stopTracking(
        id: event.id,
        etaTimestamp: event.etaTimestamp,
        comment: event.comment,
        type: event.type,
      );
      emit(state.copyWith(isDriveStarted: false));
    } else {
      trackingRepo.startTracking(
        id: event.id,
        etaTimestamp: event.etaTimestamp,
        comment: event.comment,
        type: event.type,
      );
      emit(state.copyWith(isDriveStarted: true));
    }
  }

  Future<void> _checkConnection(
      _CheckConnection event, Emitter<MainState> emit) async {
    if (!_lastResults.contains(ConnectivityResult.none)) {
      try {
        log('authRepo.ping();');
        await authRepo.ping();
        emit(state.copyWith(isConnected: true));
      } catch (e) {
        log('Ping failed: $e');
        emit(state.copyWith(isConnected: false));
      }
    } else {
      emit(state.copyWith(isConnected: false));
    }
  }

  void _updateConnectionStatus(List<ConnectivityResult> results) {
    print('Connection status updated: $results');
    _lastResults = results;
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
