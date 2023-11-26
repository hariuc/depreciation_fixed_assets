class CacheFailure implements Exception {
  final dynamic errorObject;

  CacheFailure({required this.errorObject});
}
