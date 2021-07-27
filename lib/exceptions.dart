class NotAuthorizedException implements Exception {
  String cause;
  NotAuthorizedException(this.cause);
}

class NotFoundException implements Exception {
  String cause;
  NotFoundException(this.cause);
}

class DataConflictException implements Exception {
  String cause;
  DataConflictException(this.cause);
}

class DataExpiredException implements Exception {
  String cause;
  DataExpiredException(this.cause);
}
