import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/api_interceptor.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
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
    final response = await _makeRequest(() => dio.get('/chats'));
    return (response.data['chats'] as List)
        .map((chat) => ChatModel.fromJson(chat))
        .toList();
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
}
