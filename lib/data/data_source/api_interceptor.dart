import 'package:dio/dio.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';

class AuthInterceptor extends Interceptor {
  final AuthDataSource authDataSource;
  final Dio dio;
  final String api;

  AuthInterceptor(this.authDataSource, this.dio, this.api);

  // @override
  // Future onRequest(
  //     RequestOptions options, RequestInterceptorHandler handler) async {
  //   if (!options.path.endsWith('/authentication/refresh')) {
  //     String? authToken = await authDataSource.getAuthToken();
  //     print('token.accessToken - $authToken');
  //     if (authToken != null) {
  //       options.headers['Authorization'] = 'Bearer $authToken';
  //     }
  //   }
  //   return handler.next(options);
  // }

  // @override
  // Future onError(DioException err, ErrorInterceptorHandler handler) async {
  //   if (err.response?.statusCode == 401 &&
  //       !err.requestOptions.path.endsWith('/authentication/refresh')) {
  //     RequestOptions options = err.response!.requestOptions;
  //     String? refreshToken = await authDataSource.getRefreshToken();
  //     String? accessToken = await authDataSource.getAuthToken();

  //     if (refreshToken != null) {
  //       try {
  //         final Response<dynamic> tokenUpdateResponse = await dio.post(
  //           '/authentication/refresh',
  //           data: {
  //             'refreshToken': refreshToken,
  //             'accessToken': accessToken,
  //           },
  //           options: Options(extra: {'noAuthInterceptor': true}),
  //         );

  //         if (tokenUpdateResponse.statusCode == 200) {
  //           AuthModel token =
  //               AuthModel.fromJson(tokenUpdateResponse.data['data']);
  //           await authDataSource.saveAccessToken(token.accessToken);
  //           await authDataSource.saveRefreshToken(token.refreshToken);

  //           options.headers['Authorization'] = 'Bearer ${token.accessToken}';
  //           final retryResponse = await dio.fetch(options);
  //           return handler.resolve(retryResponse);
  //         }
  //       } catch (e) {
  //         return handler.next(err);
  //       }
  //     }
  //   }
  //   return handler.next(err);
  // }
}
