import 'dart:async';
import 'dart:developer' as developer;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/services/connectivity_service.dart';
import 'package:tms_driver/data/services/hive_service.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';

class MessagesRepositoryImpl implements MessagesRepository {
  final ApiDataSource apiDataSource;
  final HiveService hiveService;
  final ConnectivityService connectivityService;

  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  List<ConnectivityResult> _lastResults = [ConnectivityResult.none];

  MessagesRepositoryImpl({
    required this.apiDataSource,
    required this.hiveService,
    required this.connectivityService,
  }) {
    _connectivitySubscription = connectivityService.connectivityStream
        .listen((List<ConnectivityResult> results) {
      _updateConnectionStatus(results);
    });
  }
  void _updateConnectionStatus(List<ConnectivityResult> results) {
    _lastResults = results;
  }

  void dispose() {
    _connectivitySubscription.cancel();
  }

  @override
  Future<ChatDetailModel> getChatDetails(int chatId) async {
    try {
      if (_lastResults.contains(ConnectivityResult.none)) {
        final chatDetailsFromDb = hiveService.getChatDetails();
        if (chatDetailsFromDb.isNotEmpty) {
          developer.log('Retrieved chat details from local database',
              name: 'MessagesRepositoryImpl');

          return chatDetailsFromDb.firstWhere((chat) => chat.id == chatId);
        } else {
          throw Exception(
              'No internet connection and no local chat data available');
        }
      } else {
        final chatDetails = await apiDataSource.getChatDetails(chatId);
        await hiveService.saveChatDetails(chatDetails);
        return chatDetails;
      }
    } catch (e, s) {
      print('getChatDetails error - $e; stack - $s');
      return const ChatDetailModel(
        id: 0,
        subjectType: '',
        subjectId: 0,
        title: '',
        participants: [],
        messages: [],
      );
    }
  }

  @override
  Future<void> sendMessage(int chatId, String content,
      [List<String>? documentUploadIds]) async {
    await apiDataSource.sendMessage(chatId, content,
        documentUploadIds: documentUploadIds);
  }

  @override
  Future<String> checkUnreadMessage(String chatId, int messageId) async {
    return await apiDataSource.checkUnreadMessage(chatId, messageId);
  }

  @override
  Future<List<ChatModel>> getChats() async {
    if (_lastResults.contains(ConnectivityResult.none)) {
      final chats = hiveService.getChats();
      if (chats.isNotEmpty) {
        developer.log('Retrieved chats from local database',
            name: 'MessagesRepositoryImpl');
        return chats;
      } else {
        throw Exception(
            'No internet connection and no local chat data available');
      }
    } else {
      final List<ChatModel> chats = await apiDataSource.getChats();
      await hiveService.saveChats(chats);
      developer.log('Chats fetched from API and saved locally',
          name: 'MessagesRepositoryImpl');
      return chats;
    }
  }
}
