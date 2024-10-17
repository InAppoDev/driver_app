part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.started() = Started;
  const factory NotificationEvent.startPolling() = StartPolling;
  const factory NotificationEvent.stopPolling() = StopPolling;
  const factory NotificationEvent.fetchNotifications() = FetchNotifications;
}
