import 'dart:io';

import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/models/document/upload_document_response.dart';
import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/data/models/user/user_model.dart';

abstract class ApiDataSource {
  Future<String> ping();

  Future<Map<String, dynamic>> getConfig();

  Future<String> requestAuthCode({
    required String phone,
    bool useEmail = false,
  });

  Future<String> verifyAuth({
    required String authCode,
    required String verificationCode,
  });
  Future<UserModel> getUser();

  Future<List<ChatModel>> getChats();

  Future<ChatDetailModel> getChatDetails(int chatId);

  Future<void> sendMessage(
    int chatId,
    String content, {
    List<String>? documentUploadIds,
  });

  Future<UploadDocumentResponse> uploadDocument(File file, String name);

  Future<List<NotificationModel>> getNotifications();

  Future<List<DispatchListModel>> getTrips();
}
