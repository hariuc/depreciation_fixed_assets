import 'package:dartz/dartz.dart';
import 'package:depreciation_fixed_assets_app/domain/core/errors/failure.dart';
import 'package:depreciation_fixed_assets_app/domain/modules/modules/main_mean/models/main_mean_index.dart';

abstract class MainMeanRepository{
  Future<Either<Failure, List<MainMeanEntity>>> getAll();
}