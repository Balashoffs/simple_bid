abstract class _Exception implements Exception {
  final dynamic error;
  final String? message;

  const _Exception(
    this.message, {
    this.error,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _Exception &&
          runtimeType == other.runtimeType &&
          error == other.error &&
          message == other.message;

  @override
  int get hashCode => error.hashCode ^ message.hashCode;
}

class DataBaseException extends _Exception {
  const DataBaseException([String? message]) : super(message);
}

class ServerException extends _Exception {
  const ServerException([String? message, dynamic error])
      : super(message, error: error);
}

class NetworkException extends _Exception {
  const NetworkException([String? message]) : super(message);
}

class UnauthorizedException extends _Exception {
  const UnauthorizedException([String? message]) : super(message);
}

class ResponseException extends _Exception {
  const ResponseException([String? message, dynamic error])
      : super(message, error: error);
}
