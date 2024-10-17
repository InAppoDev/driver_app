import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';
import 'package:tms_driver/domain/repositories/notification_repository.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository notificationRepo =
      GetIt.instance<NotificationRepository>();
  Timer? _timer;

  NotificationBloc() : super(NotificationState.initial()) {
    on<Started>(_getNotification);
    on<StartPolling>(_startPolling);
    on<StopPolling>(_stopPolling);
    on<FetchNotifications>(_getNotification);
  }

  Future<void> _startPolling(
      StartPolling event, Emitter<NotificationState> emit) async {
    print('object');
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
      final list = await notificationRepo.getNotifications();
      print(list.length);
    });
  }

  FutureOr<void> _stopPolling(
      StopPolling event, Emitter<NotificationState> emit) {
    _timer?.cancel();
    _timer = null;
  }

  Future<void> _getNotification(
      NotificationEvent event, Emitter<NotificationState> emit) async {
    emit(state.copyWith(status: NotificationStatus.loading));
    try {
      final notifications = await notificationRepo.getNotifications();
      emit(state.copyWith(
        status: NotificationStatus.loaded,
        notifications: notifications,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: NotificationStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
