import 'package:tms_driver/presentation/utils/error_handler/exception/base_exception.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/exception_type.dart';

class UnAuthException extends BaseException {
  final String message;

  const UnAuthException(
    this.message,
  ) : super(
          ExceptionType.unauth,
        );
}
