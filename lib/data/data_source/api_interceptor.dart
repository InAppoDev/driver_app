import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';

class AuthInterceptor extends Interceptor {
  final AuthDataSource authDataSource;
  final Dio dio;
  final String api;

  AuthInterceptor(this.authDataSource, this.dio, this.api);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      final token = await authDataSource.getAuthToken();
      if (kDebugMode) {
        print('AuthInterceptor token.accessToken - $token');
      }
      options.headers['Authorization'] = 'Bearer $token';
      options.baseUrl = api;
      print('AuthInterceptor request headers: ${options.headers}');
      print('AuthInterceptor request URL: ${options.uri}');
    } catch (e) {
      print('Error in AuthInterceptor: $e');
    }
    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('AuthInterceptor onError: ${err.message}');
    return handler.next(err);
  }
}
