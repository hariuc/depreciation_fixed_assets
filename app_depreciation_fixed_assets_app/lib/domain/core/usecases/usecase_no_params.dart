import 'package:dartz/dartz.dart';
import 'package:depreciation_fixed_assets_app/domain/core/errors/failure.dart';

abstract class UseCaseNoParams<TYPE> {
  Future<Either<Failure, TYPE>> call();
}
