abstract class ErrorHandler {
  void handleException(Exception exception);
  void handleStatusCode(int? responseStatusCode);
  Exception handle(Object e);
}
