import 'package:domain/core/errors/failure.dart';

class OtherFailure extends Failure {
  final dynamic errorObject;

  OtherFailure({required this.errorObject});
}
