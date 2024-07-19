import 'package:tms_driver/presentation/utils/error_handler/exception/base_exception.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/exception_type.dart';

class NetworkException extends BaseException {
  final String message;

  const NetworkException(
    this.message,
  ) : super(
          ExceptionType.networkExeption,
        );
}
