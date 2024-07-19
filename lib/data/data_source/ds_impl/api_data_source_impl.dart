import 'package:dio/dio.dart';

import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/api_interceptor.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
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
}
