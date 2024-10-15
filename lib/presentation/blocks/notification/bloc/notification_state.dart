part of 'notification_bloc.dart';

enum NotificationStatus { initial, loading, loaded, error }

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required NotificationStatus status,
    List<NotificationModel>? notifications,
    String? errorMessage,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState(
        status: NotificationStatus.initial,
      );
}
