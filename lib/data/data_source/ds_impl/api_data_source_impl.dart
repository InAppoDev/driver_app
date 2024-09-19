import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/api_interceptor.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/data/models/check/check_call/check_call_model.dart';
import 'package:tms_driver/data/models/document/upload_document_response.dart';
import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/data/models/user/user_model.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler.dart';

class ApiDataSourceImpl implements ApiDataSource {
  final Dio dio;
  final ErrorHandler errorHandler;
  final AuthDataSource authDataSource;

  ApiDataSourceImpl({
    required this.dio,
    required this.errorHandler,
    required this.authDataSource,
    required String api,
  }) {
    dio.interceptors.add(AuthInterceptor(authDataSource, dio, api));
    dio.options
      ..baseUrl = api
      ..headers['Content-Type'] = 'application/json';
  }

  Future<Response> _makeRequest(
      Future<Response> Function() requestFunction) async {
    try {
      final response = await requestFunction();
      if (kDebugMode) {
        print(' _makeRequest response.statusCode ${response.statusCode}');
      }
      if (response.statusCode != 200 && response.statusCode != 201) {
        errorHandler.handleStatusCode(response.statusCode);
        throw Exception('Request failed with status: ${response.statusCode}');
      }
      return response;
    } catch (e) {
      errorHandler.handleException(e as Exception);
      throw Exception('Error making request');
    }
  }

  @override
  Future<String> ping() async {
    final response = await _makeRequest(() => dio.get('/public/ping'));
    return response.data['message'];
  }

  @override
  Future<Map<String, dynamic>> getConfig() async {
    final response = await _makeRequest(() => dio.get('/public/config'));
    return response.data;
  }

  @override
  Future<String> requestAuthCode(
      {required String phone, bool useEmail = false}) async {
    final response =
        await _makeRequest(() => dio.post('/auth/request-code', data: {
              'phone': phone,
              'use_email': useEmail,
            }));
    if (kDebugMode) {
      print(response.data['auth_code']);
    }
    return response.data['auth_code'];
  }

  @override
  Future<String> verifyAuth(
      {required String authCode, required String verificationCode}) async {
    final response = await _makeRequest(() => dio.post('/auth/verify', data: {
          'auth_code': authCode,
          'verification_code': verificationCode,
        }));
    if (kDebugMode) {
      print(response.data['auth_token']);
    }
    return response.data['auth_token'];
  }

  @override
  Future<UserModel> getUser() async {
    final response = await _makeRequest(() => dio.get('/me'));
    if (kDebugMode) {
      print(response.data);
    }
    return UserModel.fromJson(response.data);
  }

  @override
  Future<List<ChatModel>> getChats() async {
    try {
      final response = await _makeRequest(() => dio.get('/chats'));
      return (response.data['chats'] as List)
          .map((chat) => ChatModel.fromJson(chat))
          .toList();
    } catch (e, s) {
      print('errrrror - $e; stack - $s');
      return [];
    }
  }

  @override
  Future<ChatDetailModel> getChatDetails(int chatId) async {
    final response = await _makeRequest(() => dio.get('/chats/$chatId'));
    return ChatDetailModel.fromJson(response.data);
  }

  @override
  Future<void> sendMessage(int chatId, String content,
      {List<String>? documentUploadIds}) async {
    await _makeRequest(() => dio.post('/chats/$chatId/messages', data: {
          'content': content,
          if (documentUploadIds != null)
            'document_upload_ids': documentUploadIds,
        }));
  }

  @override
  Future<UploadDocumentResponse> uploadDocument(File file, String name) async {
    try {
      FormData formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(file.path, filename: name),
        'name': name,
      });

      final response = await _makeRequest(
          () => dio.post('/documents/upload', data: formData));

      if (response.data['success'] == true) {
        print('UploadDocumentResponse success');
        return UploadDocumentResponse.fromJson(response.data);
      } else {
        throw Exception(
            'Failed to upload file: ${response.data['error_message'] ?? 'Unknown error'}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error uploading document: $e');
      }
      errorHandler.handleException(e as Exception);
      throw Exception('Error uploading file');
    }
  }

  @override
  Future<List<NotificationModel>> getNotifications() async {
    try {
      final response = await _makeRequest(() => dio.get('/events'));
      final List<NotificationModel> notifications = [];
      final responseList = response.data;
      for (final respNotification in responseList) {
        notifications.add(NotificationModel.fromJson(respNotification));
      }
      return notifications;
    } catch (e) {
      if (kDebugMode) {
        print('Error getting notification: $e');
      }
      // errorHandler.handleException(e as Exception);
      throw Exception('Error getting notifications');
    }
  }

  @override
  Future<List<DispatchListModel>> getTrips() async {
    final response = await _makeRequest(() => dio.get('/dispatches'));
    final tripsJson = response.data as List<dynamic>;
    return tripsJson.map((json) => DispatchListModel.fromJson(json)).toList();
  }

  @override
  Future<List<DispatchListModel>> getHistoryTrips() async {
    final response = await _makeRequest(() => dio.get('/dispatches/history'));
    final tripsJson = response.data as List<dynamic>;
    return tripsJson.map((json) => DispatchListModel.fromJson(json)).toList();
  }

  @override
  Future<DispatchModel> getTripById(int tripId) async {
    final response = await _makeRequest(() => dio.get('/dispatches/$tripId'));
    return DispatchModel.fromJson(response.data);
  }

  @override
  Future<DispatchModel?> getActiveTrip() async {
    final response = await _makeRequest(() => dio.get('/dispatches/active'));
    // 204 no active dispatch found
    if (response.statusCode == 204) {
      return null;
    }
    return DispatchModel.fromJson(response.data);
  }

  @override
  Future<bool> sendCheckCall({
    required int id,
    required CheckCallModel checkCall,
  }) async {
    print(checkCall);
    final response =
        await _makeRequest(() => dio.post('/dispatches/$id/check-call'));
    print('confirm CheckCall get response code ${response.statusCode}');
    return response.statusCode == 200;
  }
}
