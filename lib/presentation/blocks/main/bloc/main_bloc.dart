import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/services/connectivity_service.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';
import 'package:tms_driver/presentation/blocks/message_list/message_list_bloc.dart';
import 'package:tms_driver/presentation/blocks/notification/bloc/notification_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_list_bloc.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';

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

  final TripListBloc tripListBloc;
  final TripDetailBloc tripDetailBloc;
  final MessageListBloc messageListBloc;
  final UserBloc userBloc;
  final NotificationBloc notificationBloc;

  MainBloc({
    required this.tripListBloc,
    required this.tripDetailBloc,
    required this.messageListBloc,
    required this.userBloc,
    required this.notificationBloc,
  }) : super(MainState.initial()) {
    on<_PageChanged>(_onPageChanged);
    on<_HideShowNavBar>(_onHideShowNavBar);
    on<_CheckConnection>(_checkConnection);
    on<_UpdateDriveButton>(_onUpdateDriveButton);

    _updateConnectionStatus(connectivityService.lastResults);
    add(const MainEvent.checkConnection());

    _connectivitySubscription = connectivityService.connectivityStream
        .listen((List<ConnectivityResult> results) {
      _updateConnectionStatus(results);
      add(const MainEvent.checkConnection());
    });
    on<_InitializeApp>(_initializeApp);
  }

  Future<void> _initializeApp(
      _InitializeApp event, Emitter<MainState> emit) async {
    tripListBloc.add(const TripListEvent.fetchTrips());
    tripListBloc.add(const TripListEvent.fetchHistoryTrips());
    tripDetailBloc.add(const TripDetailEvent.loadActiveTrip());
    messageListBloc.add(const MessageListEvent.getChats());
    userBloc.add(const UserEvent.started());
    notificationBloc.add(const NotificationEvent.started());

    await Future.wait([
      tripListBloc.stream
          .firstWhere((state) => state.status != TripStatus.initial),
      tripDetailBloc.stream
          .firstWhere((state) => state.status == ActiveTripStatus.success),
      messageListBloc.stream
          .firstWhere((state) => state.status == MessageListStatus.loaded),
      userBloc.stream.firstWhere((state) => state.status == UserStatus.loaded),
      notificationBloc.stream
          .firstWhere((state) => state.status == NotificationStatus.loaded),
    ]);

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
      trackingRepo.stopTracking(event.id);
      emit(state.copyWith(isDriveStarted: false));
    } else {
      trackingRepo.startTracking(event.id);
      emit(state.copyWith(isDriveStarted: true));
    }
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
