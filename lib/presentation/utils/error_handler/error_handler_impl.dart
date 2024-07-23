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
            // Обробка помилок мережі
            _showErrorMessage(
              'Oops!',
              'It looks like you are having problems with your internet connection.',
            );
            break;
          }
        case ExceptionType.unauth:
          {
            // Обробка неавторизованих помилок
            _handleUnAuth();
            break;
          }
        case ExceptionType.validation:
          {
            // Обробка помилок валідації
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
            // Обробка невідомих помилок
            _showErrorMessage(
              'Error',
              'An unknown error occurred. Please try again.',
            );
            break;
          }
      }
    } else {
      // Обробка всіх інших типів винятків
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
        // Обробка клієнтських помилок
        _showErrorMessage(
          'Client Error',
          'A client error occurred. Status code: $responseStatusCode',
        );
      } else if (responseStatusCode >= 500) {
        // Обробка серверних помилок
        _showErrorMessage(
          'Server Error',
          'A server error occurred. Status code: $responseStatusCode',
        );
      } else {
        // Інформаційні та успішні статуси
        print('Status code: $responseStatusCode');
      }
    }
    return Exception('HTTP status code: $responseStatusCode');
  }

  void _showErrorMessage(String title, String message) {
    // Використовуйте ваш улюблений спосіб відображення повідомлень про помилки
    // Наприклад, Get.snackbar(title, message);
    print('$title: $message');
  }

  void _handleUnAuth() {
    // Обробка неавторизованих помилок, наприклад, перенаправлення на екран входу
    // Get.offAllNamed('/login');
    print('Unauthenticated! Redirecting to login...');
  }

  @override
  void handleException(Exception exception) {
    // Ви можете реалізувати цей метод, якщо потрібна спеціальна обробка винятків
    handle(exception);
  }
}
