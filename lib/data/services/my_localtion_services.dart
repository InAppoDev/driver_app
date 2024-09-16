import 'dart:async';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:background_fetch/background_fetch.dart';
import 'package:tms_driver/data/services/foreground_service.dart';

class MyLocationService {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Timer? _timer;
  Timer? _driveTimer;
  int _secondsElapsed = 0;
  final ForegroundService foregroundService;

  MyLocationService({required this.foregroundService}) {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _initializeNotifications();
    startTracking();
  }

  void _initializeNotifications() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: _onSelectNotification);
    log('_initializeNotifications');
  }

  void _sendLocation(Position position) async {
    if (kDebugMode) {
      print('Location: ${position.latitude}, ${position.longitude}');
    }
  }

  void startTracking() async {
    // Background task every 15 minutes
    log('BackgroundFetch startTracking');
    BackgroundFetch.configure(
        BackgroundFetchConfig(
          minimumFetchInterval: 15,
          stopOnTerminate: false,
          enableHeadless: true,
          requiresBatteryNotLow: false,
          requiresCharging: false,
          requiresStorageNotLow: false,
          requiresDeviceIdle: false,
          requiredNetworkType: NetworkType.NONE,
          forceAlarmManager: true,
        ), (String taskId) async {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      _sendLocation(position);
      BackgroundFetch.finish(taskId);
    }, (String taskId) async {
      BackgroundFetch.finish(taskId);
    });

    // Timer for active mode every 15 minutes
    _timer = Timer.periodic(const Duration(minutes: 15), (timer) async {
      print('Timer event received');
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      _sendLocation(position);
    });
  }

  void stopTracking() {
    _timer?.cancel();
    BackgroundFetch.stop();
  }

  // Callback for iOS local notifications
  void _onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {}

  // Callback for iOS notification selection
  void _onSelectNotification(NotificationResponse? response) async {}

  void startDriveTimer() async {
    await foregroundService.startService();
    _driveTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _secondsElapsed++;
      _updateDriveNotification();
    });
  }

  void stopDriveTimer() async {
    await foregroundService.stopService();
    _driveTimer?.cancel();
  }

  void resetDriveTimer() {
    _secondsElapsed = 0;
  }

  void _updateDriveNotification() async {
    final String elapsedTime =
        _formatDuration(Duration(seconds: _secondsElapsed));

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'drive_channel',
      'Drive Tracking',
      importance: Importance.max,
      priority: Priority.high,
      ongoing: true,
      sound: null,
      playSound: false,
      enableVibration: false,
      silent: true,
      autoCancel: false,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      2,
      'Drive Time',
      'Time: $elapsedTime',
      platformChannelSpecifics,
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
