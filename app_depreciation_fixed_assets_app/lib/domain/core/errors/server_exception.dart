class ServerException implements Exception {
  final dynamic errorObject;

  ServerException({required this.errorObject});
}
