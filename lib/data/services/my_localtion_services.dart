import 'dart:async';
import 'dart:developer';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:background_fetch/background_fetch.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/models/check/check_call/check_call_model.dart';
import 'package:tms_driver/data/models/check/location/location_model.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';

class MyLocationService {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Timer? _timer;
  Timer? _driveTimer;
  int _secondsElapsed = 0;
  bool _isTracking = false;

  MyLocationService() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _initializeNotifications();
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

  void _showDriveModeNotification(String elapsedTime) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
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
      styleInformation: BigTextStyleInformation(
        'Auto-sharing location every 15 minutes \nTime: $elapsedTime',
      ),
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      2,
      'Drive Mode Active',
      'Auto-sharing location every 15 minutes \n Time: $elapsedTime',
      platformChannelSpecifics,
    );
  }

  Future<void> startDriveTimer(int tripId) async {
    if (_isTracking) {
      log('Tracking is already started');
      return;
    }

    _isTracking = true;
    _driveTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _secondsElapsed++;
      String elapsedTime = _formatDuration(Duration(seconds: _secondsElapsed));
      _showDriveModeNotification(elapsedTime);
    });

    startTracking(tripId);
  }

  void stopDriveTimer(int id) async {
    if (!_isTracking) {
      log('Tracking is not active');
      return;
    }

    _isTracking = false;
    if (_driveTimer != null) {
      _driveTimer!.cancel();
      log('Drive timer stopped');
    } else {
      log('Drive timer was not running');
    }

    await flutterLocalNotificationsPlugin.cancel(2);
    stopTracking(id);
  }

  Future<void> sendCheckCall({required int id, required String type}) async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      final tripRepository = GetIt.instance<TripRepository>();

      final CheckCallModel checkCallModel = CheckCallModel(
        location: LocationModel(
          lat: position.latitude,
          lng: position.longitude,
        ),
        type: type,
      );

      await tripRepository.sendCheckCall(
        id: id,
        checkCall: checkCallModel,
      );

      print('Check call sent successfully');
    } catch (e) {
      print('Failed to send check call: $e');
    }
  }

  void startTracking(int id) async {
    if (_timer != null) {
      log('Tracking timer is already running');
      return;
    }
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
      await sendCheckCall(id: id, type: 'en_route_update');
      BackgroundFetch.finish(taskId);
    }, (String taskId) async {
      BackgroundFetch.finish(taskId);
    });

    await sendCheckCall(id: id, type: 'started_moving');

    await FlutterForegroundTask.startService(
      notificationTitle: 'Drive Mode Active',
      notificationText: 'Auto-sharing location every 15 minutes',
    );

    // Запуск основного таймера, що відправляє CheckCall кожні 15 хвилин
    _timer = Timer.periodic(Duration(seconds: 10), (timer) async {
      log('Timer event received');
      await sendCheckCall(id: id, type: 'en_route_update');
    });
  }

  void stopTracking(int id) async {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
      log('Tracking timer stopped');
      await sendCheckCall(id: id, type: 'stopped_moving');
    } else {
      log('Tracking timer was not running');
    }

    BackgroundFetch.stop().then((_) {
      log('BackgroundFetch stopped');
    }).catchError((e) {
      log('Failed to stop BackgroundFetch: $e');
    });

    FlutterForegroundTask.stopService().then((_) {
      log('Foreground service stopped');
    }).catchError((e) {
      log('Failed to stop foreground service: $e');
    });
  }

  void _onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {}

  void _onSelectNotification(NotificationResponse? response) async {}

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }
}
