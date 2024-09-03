import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/services/connectivity_service.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AuthRepository authRepo = GetIt.instance<AuthRepository>();
  final ConnectivityService connectivityService =
      GetIt.instance<ConnectivityService>();

  List<ConnectivityResult> _lastResults = [ConnectivityResult.none];
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  MainBloc() : super(MainState.initial()) {
    on<_PageChanged>(_onPageChanged);
    on<_HideShowNavBar>(_onHideShowNavBar);
    on<_CheckConnection>(_checkConnection);

    _updateConnectionStatus(connectivityService.lastResults);
    add(const MainEvent.checkConnection());

    _connectivitySubscription = connectivityService.connectivityStream
        .listen((List<ConnectivityResult> results) {
      print('Received connectivity results: $results');
      _updateConnectionStatus(results);
      add(const MainEvent.checkConnection());
    });
  }

  Future<void> _onPageChanged(
      _PageChanged event, Emitter<MainState> emit) async {
    emit(state.copyWith(selectedPage: event.page));
  }

  Future<void> _onHideShowNavBar(
      _HideShowNavBar event, Emitter<MainState> emit) async {
    emit(state.copyWith(showNavBar: event.hideShowNavBar));
  }

  Future<void> _checkConnection(
      _CheckConnection event, Emitter<MainState> emit) async {
    if (!_lastResults.contains(ConnectivityResult.none)) {
      try {
        print('authRepo.ping();');
        await authRepo.ping();
        emit(state.copyWith(isConnected: true));
      } catch (e) {
        print('Ping failed: $e');
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
