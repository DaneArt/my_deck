class CacheException implements Exception {
  final String message;

  CacheException(this.message);
}

class NetworkException implements Exception {
  final String message;

  NetworkException([this.message = "Unhandled exception"]);
}

class NetworkTimeoutException implements NetworkException {
  final String message;
  final Duration duration;

  NetworkTimeoutException(this.message, [this.duration]);
}

class MissingUserException implements NetworkException {
  final String message;

  MissingUserException(this.message);
}

class UnauthorizedException implements NetworkException {
  final String message;

  UnauthorizedException(this.message);
}
