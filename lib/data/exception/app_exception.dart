
class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);
  @override
  String toString() {
    return "$_message$_prefix";
  }
}

class InternetException extends AppException {
  InternetException([String? message])
      : super(message, 'No Internet Exception');
}

class UnAuthorizeRequest extends AppException {
  UnAuthorizeRequest([String? message])
      : super(message, "you don't have access to this");
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message, '');
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message]) : super(message, 'request time out');
}

class BadRequestException extends AppException {
  BadRequestException([String? message])
      : super(message, 'Invalid request, please check your inputs');
}

class NotFoundException extends AppException {
  NotFoundException([String? message]) : super(message, 'Resource not found');
}

class ConflictException extends AppException {
  ConflictException([String? message])
      : super(message, 'Conflict: Resource already exists');
}

class InternalServerError extends AppException {
  InternalServerError([String? message])
      : super(message, 'Internal server error');
}

class ServiceUnavailable extends AppException {
  ServiceUnavailable([String? message])
      : super(message, 'Service unavailable, please try again later');
}

class NotificationException extends AppException {
  NotificationException([String? message])
      : super(message, 'Notification error: $message');
}

class RateLimitException extends AppException {
  RateLimitException([String? message])
      : super(message, 'Too Many Requests: Please wait and try again later.');
}
