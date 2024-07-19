import 'package:tms_driver/presentation/utils/error_handler/exception/base_exception.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/exception_type.dart';

class ValidationException extends BaseException {
  final Map<String, String?> message;

  const ValidationException(
    this.message,
  ) : super(
          ExceptionType.validation,
        );
}
