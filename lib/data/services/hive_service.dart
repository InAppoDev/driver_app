import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/models/user/user_model.dart';
import 'package:tms_driver/data/services/adapter/chat_model_adapter.dart';
import 'package:tms_driver/data/services/adapter/chat_participant_adapter.dart';
import 'package:tms_driver/data/services/adapter/user_model_adapter.dart';

import 'adapter/chat_detail_adapter.dart';
import 'adapter/message_adapter.dart';

class HiveService {
  static final HiveService _instance = HiveService._internal();

  factory HiveService() {
    return _instance;
  }

  HiveService._internal();

  late Box<UserModel> userBox;
  late Box<ChatModel> chatBox;
  late Box<ChatDetailModel> chatDetailBox;

  Future<void> init() async {
    log('Initializing Hive...', name: 'HiveService');
    await Hive.initFlutter();

    log('Registering adapters...', name: 'HiveService');
    Hive.registerAdapter(UserModelAdapter());
    Hive.registerAdapter(ChatModelAdapter());
    Hive.registerAdapter(ChatDetailModelAdapter());
    Hive.registerAdapter(ChatParticipantAdapter());
    Hive.registerAdapter(MessageAdapter());

    log('Opening userBox...', name: 'HiveService');
    userBox = await Hive.openBox<UserModel>('userBox');
    log('Opening chatBox...', name: 'HiveService');
    chatBox = await Hive.openBox<ChatModel>('chatBox');
    log('Opening chatDetailBox...', name: 'HiveService');
    chatDetailBox = await Hive.openBox<ChatDetailModel>('chatDetailBox');

    if (userBox.isOpen) {
      log('userBox successfully opened.', name: 'HiveService');
    } else {
      log('Failed to open userBox.', name: 'HiveService');
    }

    if (chatBox.isOpen) {
      log('chatBox successfully opened.', name: 'HiveService');
    } else {
      log('Failed to open chatBox.', name: 'HiveService');
    }

    if (chatDetailBox.isOpen) {
      log('chatDetailBox successfully opened.', name: 'HiveService');
    } else {
      log('Failed to open chatDetailBox.', name: 'HiveService');
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

  Future<void> saveChats(List<ChatModel> chats) async {
    log('Saving chats to chatBox...', name: 'HiveService');
    await chatBox.clear();
    await chatBox.addAll(chats);
    log('Chats saved successfully.', name: 'HiveService');
  }

  List<ChatModel> getChats() {
    log('Retrieving chats from chatBox...', name: 'HiveService');
    final chats = chatBox.values.toList();
    if (chats.isNotEmpty) {
      log('Chats retrieved successfully.', name: 'HiveService');
    } else {
      log('No chats found in chatBox.', name: 'HiveService');
    }
    return chats;
  }

  Future<void> saveChatDetails(ChatDetailModel chatDetails) async {
    log('Saving chat details to chatDetailBox...', name: 'HiveService');

    await chatDetailBox.clear();
    await chatDetailBox.put(chatDetails.id, chatDetails);

    log('Chat details were saved successfully.', name: 'HiveService');
  }

  List<ChatDetailModel> getChatDetails() {
    log('Retrieving chats from chatBox...', name: 'HiveService');
    final List<ChatDetailModel> chatDetails = chatDetailBox.values.toList();
    if (chatDetails.isNotEmpty) {
      log('Chat details are retrieved successfully.', name: 'HiveService');
    } else {
      log('No chat details found in chatDetailBox.', name: 'HiveService');
    }

    return chatDetails;
  }
}
