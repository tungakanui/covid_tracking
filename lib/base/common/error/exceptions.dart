import '../models/error/validation_exception_body.dart';

class ServerException implements Exception {}

class UnAuthorizedException implements Exception {}

class CacheException implements Exception {}

class NetWorkException implements Exception {}

class ServerValidationException implements ServerException {
  final ValidationExceptionBody body;
  ServerValidationException(this.body);
}

class InvalidFileUploadException implements Exception {
  final String message;
  InvalidFileUploadException(this.message);
}
