import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';

abstract class UseCaseParams<TYPE, PARAMS> {
  Future<Either<Failure, TYPE>> call(PARAMS params);
}