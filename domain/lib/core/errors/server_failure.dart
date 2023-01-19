import 'package:domain/core/errors/failure.dart';

class ServerFailure extends Failure {
  final dynamic errorObject;

  ServerFailure({required this.errorObject});
}