import 'package:tms_driver/presentation/utils/error_handler/error_handler.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/base_exception.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/exception_type.dart';
import 'package:tms_driver/presentation/utils/error_handler/exception/validation_exception.dart';

class ErrorHandlerImpl implements ErrorHandler {
  @override
  Exception handle(Object exception) {
    if (exception is BaseException) {
      switch (exception.type) {
        case ExceptionType.networkException:
          {
            _showErrorMessage(
              'Oops!',
              'It looks like you are having problems with your internet connection.',
            );
            break;
          }
        case ExceptionType.unauth:
          {
            _handleUnAuth();
            break;
          }
        case ExceptionType.validation:
          {
            final validationException = exception as ValidationException;
            String? message;

            if (validationException.message['non_field_errors'] != null) {
              message = validationException.message['non_field_errors'];
            }

            _showErrorMessage(
              'Oops!',
              message ?? 'Something went wrong. Please try again.',
            );
            return validationException;
          }
        case ExceptionType.unauth:
          {
            _showErrorMessage(
              'Error',
              'An unknown error occurred. Please try again.',
            );
            break;
          }
      }
    } else {
      _showErrorMessage(
        'Error',
        'An unexpected error occurred. Please try again.',
      );
    }
    return Exception('An error occurred');
  }

  @override
  Exception handleStatusCode(int? responseStatusCode) {
    if (responseStatusCode != null) {
      if (responseStatusCode >= 400 && responseStatusCode < 500) {
        _showErrorMessage(
          'Client Error',
          'A client error occurred. Status code: $responseStatusCode',
        );
      } else if (responseStatusCode >= 500) {
        _showErrorMessage(
          'Server Error',
          'A server error occurred. Status code: $responseStatusCode',
        );
      } else {
        print('Status code: $responseStatusCode');
      }
    }
    return Exception('HTTP status code: $responseStatusCode');
  }

  void _showErrorMessage(String title, String message) {
    print('$title: $message');
  }

  void _handleUnAuth() {
    print('Unauthenticated! Redirecting to login...');
  }

  @override
  void handleException(Exception exception) {
    handle(exception);
  }
}
