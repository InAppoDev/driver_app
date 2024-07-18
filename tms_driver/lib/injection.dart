import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/data/data_source/ds_impl/api_data_source_impl.dart';
import 'package:tms_driver/data/data_source/ds_impl/auth_data_source_impl.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler_impl.dart';

Future<void> initApp() async {
  final Dio dio = Dio();

  final ErrorHandler errorHandler =
      GetIt.instance.registerSingleton<ErrorHandler>(
    ErrorHandlerImpl(),
  );

  final AuthDataSource authDataSource =
      GetIt.instance.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(
      errorHandler: errorHandler,
    ),
  );

  final ApiDataSource apiDataSource =
      GetIt.instance.registerSingleton<ApiDataSource>(
    ApiDataSourceImpl(
      dio: dio,
      errorHandler: errorHandler,
      authDataSource: authDataSource,
      api: '',
    ),
  );

  // GetIt.instance.registerSingleton<MainRepository>(
  //   MainRepositoryImpl(
  //     apiDataSource: apiDataSource,
  //     authDataSource: authDataSource,
  //   ),
  // );
}
