import 'package:tms_driver/data/data_source/auth_data_source.dart';
import 'package:tms_driver/presentation/utils/error_handler/error_handler.dart';

class AuthDataSourceImpl implements AuthDataSource {
  ErrorHandler errorHandler;

  AuthDataSourceImpl({
    required this.errorHandler,
  });
}
