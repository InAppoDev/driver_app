import 'package:tms_driver/presentation/utils/error_handler/error_handler.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/base_exception.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/exception_type.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/validation_exception.dart';

class ErrorHandlerImpl implements ErrorHandler {
  @override
  void handleException(
    Exception exception,
  ) {
    if (exception is BaseException) {
      switch (exception.type) {
        case ExceptionType.networkExeption:
          {
            // Get.showErrorMessage(
            //     'txt_oops'.tr,
            //     'txt_it_looks_like_you_are_having_problems_with_your_internet_connection'
            //         .tr);

            break;
          }
        case ExceptionType.unauth:
          {
            // _handleUnAuth();
            break;
          }
        case ExceptionType.validation:
          {
            exception as ValidationException;
            // String? message;

            // if (exception.message['non_field_errors'] != null) {
            //   message = exception.message['non_field_errors']!;
            // }

            // Get.showErrorMessage(
            //     'txt_oops'.tr,
            //     message ??
            //         '${'txt_something_went_wrong'.tr} ${'txt_please_try_again'.tr}');
            throw exception;
          }
      }
    } else {
      throw exception;
    }
  }

  @override
  void handleStatusCode(int? responseStatusCode) {
    print(' ErrorHandlerImpl  responseStatusCode $responseStatusCode');
  }
}
