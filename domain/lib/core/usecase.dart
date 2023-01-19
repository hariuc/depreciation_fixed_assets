import 'package:dartz/dartz.dart';

abstract class UseCase<Type, T> {
  Future<Either<Failure, Type>> call(T params);
}