import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';

abstract class UseCaseStreamParams<TYPE, PARAMS> {
  Stream<Either<Failure, TYPE>> callStream(PARAMS params);
}
