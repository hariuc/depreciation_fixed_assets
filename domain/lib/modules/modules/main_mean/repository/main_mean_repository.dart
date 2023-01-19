import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';

abstract class MainMeanRepository{
  Future<Either<Failure, List<MainMeanEntity>>> getAll();
}