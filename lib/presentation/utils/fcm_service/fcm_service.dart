import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';

class FCMService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final UserRepository userRepository = GetIt.instance<UserRepository>();

  Future<void> initializeFCM(BuildContext context) async {
    await _requestPermissions();
    await _setupFCMToken();
    _setupNotificationListeners(context);
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
    print('checkkk - $token');
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
      _handleMessage(message, context);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(message, context, isAppLaunch: true);
    });
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
        GoRouter.of(context).go('/dispatch/$entityId');
      } else if (type == 'eta_request') {
        GoRouter.of(context).go('/eta_request');
      }
    }
  }
}
