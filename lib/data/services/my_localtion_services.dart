// ignore_for_file: avoid_print //TODO remove print

import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:background_fetch/background_fetch.dart';
import 'package:permission_handler/permission_handler.dart';

class MyLocationService {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  Timer? _timer;

  MyLocationService() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _initializeNotifications();
    _checkPermissions();
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
    print('_initializeNotifications');
  }

  Future<void> _checkPermissions() async {
    var status = await Permission.location.status;
    if (status.isDenied) {
      if (await Permission.location.request().isGranted) {
        print('Location permission granted');
      } else {
        print('Location permission denied');
      }
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  Future<bool> _requestPermissions() async {
    var status = await Permission.location.status;
    if (status.isGranted) {
      return true;
    } else if (status.isDenied || status.isPermanentlyDenied) {
      var result = await Permission.location.request();
      return result.isGranted;
    }
    return false;
  }

  void _showNotification(String location) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'location_channel',
      'Location Tracking',
      importance: Importance.max,
      priority: Priority.high,
      ongoing: true,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    print('_showNotification');

    await flutterLocalNotificationsPlugin.show(
      0,
      'Tracking Location',
      location,
      platformChannelSpecifics,
    );
  }

  void showTestNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'test_channel',
      'Test Notification',
      importance: Importance.max,
      priority: Priority.high,
      ongoing: false,
    );

    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    const NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.show(
      1,
      'Test Notification',
      'This is a test notification',
      platformChannelSpecifics,
    );
    print('Test notification shown');
  }

  void _sendLocation(Position position) async {
    // Log the location
    print('Location: ${position.latitude}, ${position.longitude}');
    _showNotification('Location: ${position.latitude}, ${position.longitude}');
  }

  void startTracking() async {
    // Check and request permissions
    bool hasPermission = await _requestPermissions();
    if (!hasPermission) {
      print('User denied permissions to access the device\'s location.');
      return;
    }

    // Background task every 15 minutes
    print('BackgroundFetch startTracking');
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
      print('BackgroundFetch event received');
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      _sendLocation(position);
      BackgroundFetch.finish(taskId);
    }, (String taskId) async {
      print('BackgroundFetch task timeout');
      BackgroundFetch.finish(taskId);
    });

    // Timer for active mode every 15 minutes
    _timer = Timer.periodic(const Duration(minutes: 15), (timer) async {
      print('Timer event received');
      bool hasPermission = await _requestPermissions();
      if (!hasPermission) {
        print('User denied permissions to access the device\'s location.');
        return;
      }
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
      int id, String? title, String? body, String? payload) async {
    print('Received local notification: $title, $body');
  }

  // Callback for iOS notification selection
  void _onSelectNotification(NotificationResponse? response) async {
    print('Notification selected: ${response?.payload}');
  }
}
