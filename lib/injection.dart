import 'package:dio/dio.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/data/data_source/ds_impl/api_data_source_impl.dart';
import 'package:tms_driver/data/data_source/ds_impl/auth_data_source_impl.dart';
import 'package:tms_driver/data/services/connectivity_service.dart';
import 'package:tms_driver/data/services/hive_service.dart';
import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/domain/repositories/auth_repository.dart';
import 'package:tms_driver/domain/repositories/impl/auth_repository_impl.dart';
import 'package:tms_driver/domain/repositories/impl/messages_repositpry_impl.dart';
import 'package:tms_driver/domain/repositories/impl/tracking_repository_impl.dart';
import 'package:tms_driver/domain/repositories/impl/trip_repository_impl.dart';
import 'package:tms_driver/domain/repositories/impl/user_repository_impl.dart';
import 'package:tms_driver/domain/repositories/messages_repository.dart';
import 'package:tms_driver/domain/repositories/tracking_repository.dart';
import 'package:tms_driver/domain/repositories/notification_repository.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler_impl.dart';

import 'domain/repositories/impl/notification_repository_impl.dart';

Future<void> initApp() async {
  final Dio dio = Dio();
  final HiveService hiveService = HiveService();
  await hiveService.init();

  // Initialize ConnectivityService and register it in GetIt
  final ConnectivityService connectivityService = ConnectivityService();
  GetIt.instance.registerSingleton<ConnectivityService>(connectivityService);

  // Initialize secure storage
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  // Initialize Flutter Downloader
  await FlutterDownloader.initialize();

  // Initialize MyLocationService with foregroundService and register it in GetIt
  final MyLocationService locationService = MyLocationService();
  GetIt.instance.registerSingleton<MyLocationService>(locationService);

  // Register ErrorHandler in GetIt
  final ErrorHandler errorHandler =
      GetIt.instance.registerSingleton<ErrorHandler>(ErrorHandlerImpl());

  // Register AuthDataSource with dependencies in GetIt
  final AuthDataSource authDataSource =
      GetIt.instance.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(
      errorHandler: errorHandler,
      secureStorage: secureStorage,
    ),
  );

  // Register ApiDataSource with dependencies in GetIt
  final ApiDataSource apiDataSource =
      GetIt.instance.registerSingleton<ApiDataSource>(
    ApiDataSourceImpl(
      dio: dio,
      errorHandler: errorHandler,
      authDataSource: authDataSource,
      api: 'https://dev.tms-master.com/driver-api/v1',
    ),
  );

  // Register TrackingRepository with locationService and foregroundService
  GetIt.instance.registerSingleton<TrackingRepository>(TrackingRepositoryImpl(
    locationService: locationService,
  ));

  // Register UserRepository with dependencies in GetIt
  GetIt.instance.registerSingleton<UserRepository>(
    UserRepositoryImpl(
      apiDataSource: apiDataSource,
      hiveService: hiveService,
      connectivityService: connectivityService,
    ),
  );

  // Register TripRepository with apiDataSource in GetIt
  GetIt.instance.registerSingleton<TripRepository>(
    TripRepositoryImpl(
      apiDataSource: apiDataSource,
    ),
  );

  // Register MessagesRepository with dependencies in GetIt
  GetIt.instance.registerSingleton<MessagesRepository>(
    MessagesRepositoryImpl(
      apiDataSource: apiDataSource,
      hiveService: hiveService,
      connectivityService: connectivityService,
    ),
  );

  // Register AuthRepository with dependencies in GetIt
  GetIt.instance.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(
      apiDataSource: apiDataSource,
      authDataSource: authDataSource,
    ),
  );

  // Register NotificationRepository with apiDataSource in GetIt
  GetIt.instance.registerSingleton<NotificationRepository>(
    NotificationRepositoryImpl(apiDataSource: apiDataSource),
  );
}
