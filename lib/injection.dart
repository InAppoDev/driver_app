import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/data/data_source/ds_impl/api_data_source_impl.dart';
import 'package:tms_driver/data/data_source/ds_impl/auth_data_source_impl.dart';
import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';
import 'package:tms_driver/domain/repositories/impl/auth_repository_impl.dart';
import 'package:tms_driver/domain/repositories/impl/messages_repositpry_impl.dart';
import 'package:tms_driver/domain/repositories/impl/tracking_repository_impl.dart';
import 'package:tms_driver/domain/repositories/impl/user_repository_impl.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler_impl.dart';

Future<void> initApp() async {
  final Dio dio = Dio();
  final MyLocationService locationService = MyLocationService();

  final ErrorHandler errorHandler =
      GetIt.instance.registerSingleton<ErrorHandler>(
    ErrorHandlerImpl(),
  );

  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  final AuthDataSource authDataSource =
      GetIt.instance.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(
      errorHandler: errorHandler,
      secureStorage: secureStorage,
    ),
  );

  final ApiDataSource apiDataSource =
      GetIt.instance.registerSingleton<ApiDataSource>(
    ApiDataSourceImpl(
      dio: dio,
      errorHandler: errorHandler,
      authDataSource: authDataSource,
      api: 'https://dev.tms-master.com/driver-api/v1',
    ),
  );

  GetIt.instance.registerSingleton<UserRepository>(
    UserRepositoryImpl(
      apiDataSource: apiDataSource,
    ),
  );
  GetIt.instance.registerSingleton<MessagesRepository>(
    MessagesRepositoryImpl(
      apiDataSource: apiDataSource,
    ),
  );
  GetIt.instance.registerSingleton<TrackingRepository>(
      TrackingRepositoryImpl(locationService));
  GetIt.instance.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(
      apiDataSource: apiDataSource,
      authDataSource: authDataSource,
    ),
  );

  GetIt.instance.registerSingleton<MyLocationService>(locationService);
}
