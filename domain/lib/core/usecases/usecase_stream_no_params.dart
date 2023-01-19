import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';

abstract class UseCaseStreamNoParams<TYPE> {
  Stream<Either<Failure, TYPE>> callStream();
}
