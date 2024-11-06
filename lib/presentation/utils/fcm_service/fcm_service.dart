import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';

class FCMService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();
  final UserRepository userRepository = GetIt.instance<UserRepository>();

  Future<void> initializeFCM(BuildContext context) async {
    await _requestPermissions();
    await _setupFCMToken();
    await _setupLocalNotifications();
    _setupNotificationListeners(context);

    RemoteMessage? initialMessage =
        await _firebaseMessaging.getInitialMessage();
    if (initialMessage != null) {
      _handleMessage(initialMessage, context, isAppLaunch: true);
    }
  }

  // Request permissions for iOS devices
  Future<void> _requestPermissions() async {
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus != AuthorizationStatus.authorized) {
      print("User declined or has not accepted permissions");
    }
  }

  // Obtain and send the FCM token to the server
  Future<void> _setupFCMToken() async {
    String? token = await _firebaseMessaging.getToken();
    if (token != null) {
      await _updateTokenOnServer(token);
    }
  }

  // POST the FCM token to your server
  Future<void> _updateTokenOnServer(String token) async {
    await userRepository.updateFcmToken(token);
  }

  // Setup listeners for FCM messages
  void _setupNotificationListeners(BuildContext context) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _showForegroundNotification(message);
      _handleMessage(message, context);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(message, context, isAppLaunch: true);
    });
  }

  Future<void> _setupLocalNotifications() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'alerts', // Channel ID
      'Alerts', // Channel name
      description: 'Channel for alert notifications',
      importance: Importance.high,
    );

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await _localNotifications.initialize(initializationSettings);

    // Create the notification channel (Android 8.0+ only)
    await _localNotifications
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }


  void _showForegroundNotification(RemoteMessage message) {
    final notification = message.notification;
    final android = message.notification?.android;

    if (notification != null && android != null) {
      _localNotifications.show(
        notification.hashCode,
        notification.title,
        notification.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'alerts', // Channel ID
            'Alerts', // Channel name
            channelDescription: 'Channel for alert notifications',
            importance: Importance.high,
            priority: Priority.high,
            playSound: true,
          ),
        ),
      );
    }
  }

  // Handle incoming messages and navigate based on data
  void _handleMessage(RemoteMessage message, BuildContext context,
      {bool isAppLaunch = false}) {
    if (message.data.containsKey('type')) {

      final String type = message.data['type'];
      final String? entityType = message.data['entity_type'];
      final String? entityId = message.data['entity_id'];
      if (type == 'message' && entityType == 'chat' && entityId != null) {
        final chatId = int.tryParse(entityId);
        if (chatId != null) {
          GoRouter.of(context).go('/chat/$chatId');
        }
      } else if (type == 'new_dispatch' &&
          entityType == 'truck_dispatch' &&
          entityId != null) {
        final tripId = int.tryParse(entityId);
        if (tripId != null) {
          GoRouter.of(context).go(
            '/main/true/$tripId',
          );
        }
      } else if (type == 'eta_request') {
        GoRouter.of(context).go('/main/false');
      }
    }
  }
}
