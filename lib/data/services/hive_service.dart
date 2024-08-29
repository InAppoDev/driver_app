import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:tms_driver/data/models/user/user_model.dart';
import 'package:tms_driver/data/services/adapter/user_model_adapter.dart';

class HiveService {
  static final HiveService _instance = HiveService._internal();

  factory HiveService() {
    return _instance;
  }

  HiveService._internal();

  late Box<UserModel> userBox;

  Future<void> init() async {
    log('Initializing Hive...', name: 'HiveService');
    await Hive.initFlutter();
    log('Registering UserModelAdapter...', name: 'HiveService');
    Hive.registerAdapter(UserModelAdapter());

    log('Opening userBox...', name: 'HiveService');
    userBox = await Hive.openBox<UserModel>('userBox');

    if (userBox.isOpen) {
      log('userBox successfully opened.', name: 'HiveService');
    } else {
      log('Failed to open userBox.', name: 'HiveService');
    }
  }

  Future<void> saveUser(UserModel user) async {
    log('Saving user to userBox...', name: 'HiveService');
    await userBox.put('user', user);
    log('User saved successfully.', name: 'HiveService');
  }

  UserModel? getUser() {
    log('Retrieving user from userBox...', name: 'HiveService');
    final user = userBox.get('user');
    if (user != null) {
      log('User retrieved successfully.', name: 'HiveService');
    } else {
      log('No user found in userBox.', name: 'HiveService');
    }
    return user;
  }
}
