import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';

abstract class UseCaseNoParams<TYPE> {
  Future<Either<Failure, TYPE>> call();
}
