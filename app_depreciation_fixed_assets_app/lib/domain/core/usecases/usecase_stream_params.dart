import 'package:dartz/dartz.dart';
import 'package:depreciation_fixed_assets_app/domain/core/errors/failure.dart';


abstract class UseCaseStreamParams<TYPE, PARAMS> {
  Stream<Either<Failure, TYPE>> callStream(PARAMS params);
}
