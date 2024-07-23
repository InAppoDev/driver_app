import 'package:dio/dio.dart';

import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/api_interceptor.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/data/models/user_model.dart';
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

  @override
  Future<String> ping() async {
    try {
      final response = await dio.get('/public/ping');
      return response.data['message'];
    } catch (error) {
      throw errorHandler;
    }
  }

  @override
  Future<Map<String, dynamic>> getConfig() async {
    try {
      final response = await dio.get('/public/config');
      return response.data;
    } catch (error) {
      throw errorHandler;
    }
  }

  @override
  Future<void> requestAuthCode(String phone, {bool useEmail = false}) async {
    try {
      await dio.post('/auth/request-code', data: {
        'phone': phone,
        'use_email': useEmail,
      });
    } catch (error) {
      throw errorHandler;
    }
  }

  @override
  Future<String> verifyAuth(String authCode, String verificationCode) async {
    try {
      final response = await dio.post('/auth/verify', data: {
        'auth_code': authCode,
        'verification_code': verificationCode,
      });
      return response.data['auth_token'];
    } catch (error) {
      throw errorHandler;
    }
  }

  @override
  Future<UserModel> getUser() async {
    try {
      final response = await dio.get('/me');
      return UserModel.fromJson(response.data);
    } catch (error) {
      throw errorHandler;
    }
  }
}
