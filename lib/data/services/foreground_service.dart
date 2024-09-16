import 'dart:developer';

import 'package:flutter_foreground_task/flutter_foreground_task.dart';

class ForegroundService {
  ForegroundService() {
    _initService();
  }

  void _initService() {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'foreground_service',
        channelName: 'Foreground Service Notification',
        channelDescription:
            'This notification appears when the foreground service is running.',
        channelImportance: NotificationChannelImportance.LOW,
        priority: NotificationPriority.LOW,
      ),
      iosNotificationOptions: const IOSNotificationOptions(
        showNotification: false,
        playSound: false,
      ),
      foregroundTaskOptions: ForegroundTaskOptions(
        eventAction: ForegroundTaskEventAction.repeat(5000),
        autoRunOnBoot: true,
        autoRunOnMyPackageReplaced: true,
        allowWakeLock: true,
        allowWifiLock: true,
      ),
    );
    log('FlutterForegroundTask init');
  }

  Future<void> startService() async {
    await FlutterForegroundTask.startService(
      notificationTitle: 'Foreground Service',
      notificationText: 'Running in the background',
    );
    log('Foreground service started');
  }

  Future<void> stopService() async {
    await FlutterForegroundTask.stopService();
    log('Foreground service stopped');
  }
}
