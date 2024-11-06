import 'dart:async';
import 'dart:developer';

import 'package:background_fetch/background_fetch.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator/geolocator.dart';
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

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: _onSelectNotification);
    log('_initializeNotifications');
  }

  Future<void> startDriveTimer({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  }) async {
    if (_isTracking) {
      log('Tracking is already started');
      return;
    }

    _isTracking = true;

    _secondsElapsed = 0;
    _updateDriveNotification();
    await startService();
    _driveTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _secondsElapsed++;
      _updateDriveNotification();
    });

    startTracking(
      id: id,
      etaTimestamp: etaTimestamp,
      comment: comment,
      type: type,
    );
  }

  void stopDriveTimer({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  }) async {
    if (!_isTracking) {
      log('Tracking is not active');
      return;
    }

    _isTracking = false;

    if (_driveTimer != null) {
      _driveTimer!.cancel();
      _driveTimer = null;
      log('Drive timer stopped');
    }

    await flutterLocalNotificationsPlugin.cancel(2);
    await stopService();
    stopTracking(
      id: id,
      etaTimestamp: etaTimestamp,
      comment: comment,
      type: type,
    );
  }

  Future<void> sendCheckCall({
    required int id,
    required String type,
    String? comment,
    int? etaTimestamp,
  }) async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      ).timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException('Failed to get location');
      });
      final tripRepository = GetIt.instance<TripRepository>();

      final CheckCallModel checkCallModel = CheckCallModel(
        location: LocationModel(
          lat: position.latitude,
          lng: position.longitude,
        ),
        type: type,
        comment: comment,
        etaTimestamp: etaTimestamp,
      );
      await tripRepository.sendCheckCall(
        id: id,
        checkCall: checkCallModel,
      );
    } catch (e) {
      print('Failed to send check call: $e');
    }
  }

  void startTracking({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  }) async {
    if (_timer != null || _isTracking) {
      log('Tracking is already running');
      return;
    }


    startDriveTimer(
      id: id,
      etaTimestamp: etaTimestamp,
      comment: comment,
      type: type,
    );

    log('BackgroundFetch startTracking');
    BackgroundFetch.configure(
        BackgroundFetchConfig(
          minimumFetchInterval: 1,
          stopOnTerminate: false,
          enableHeadless: true,
          requiresBatteryNotLow: false,
          requiresCharging: false,
          requiresStorageNotLow: false,
          requiresDeviceIdle: false,
          requiredNetworkType: NetworkType.NONE,
          forceAlarmManager: true,
        ), (String taskId) async {
      if (_isTracking) {
        print('BackgroundFetch $_isTracking');
        await sendCheckCall(id: id, type: 'en_route_update');
      }
      BackgroundFetch.finish(taskId);
    }, (String taskId) async {
      BackgroundFetch.finish(taskId);
    });

    await sendCheckCall(
      id: id,
      type: 'started_moving',
      comment: comment,
      etaTimestamp: etaTimestamp,
    );

    _timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
      if (_isTracking) {
        log('Timer event received');
        await sendCheckCall(id: id, type: 'en_route_update');
      }
    });
  }

  void stopTracking({
    required int id,
    required int? etaTimestamp,
    required String? comment,
    required String type,
  }) async {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
      log('Tracking timer stopped');
    } else {
      log('Tracking timer was not running');
    }

    stopDriveTimer(
      id: id,
      etaTimestamp: etaTimestamp,
      comment: comment,
      type: type,
    );

    await sendCheckCall(
      id: id,
      type: 'stopped_moving',
      comment: comment,
      etaTimestamp: etaTimestamp,
    );

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
      'Drive Mode Active: $elapsedTime',
      'Auto-sharing location every 15 minutes',
      platformChannelSpecifics,
    );
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
