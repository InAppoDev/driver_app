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

  NotificationBloc() : super(const _Initial()) {
    on<NotificationEvent>((event, emit) async {
      await _getNotification(event, emit);
    });
  }

  FutureOr<void> _getNotification(event, emit) async {
    await event.map(
      started: (e) async {
        emit(const NotificationState.loading());
        try {
          final notifications = await notificationRepo.getNotifications();
          emit(NotificationState.loaded(notifications: notifications));
        } catch (e) {
          emit(NotificationState.error(message: e.toString()));
        }
      },
    );
  }
}
