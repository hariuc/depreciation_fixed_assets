import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecases/usecase_no_params.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:domain/modules/modules/main_mean/repository/main_mean_repository.dart';

class MainMeanGetAllUseCase extends UseCaseNoParams<List<MainMeanEntity>> {
  MainMeanRepository repository;

  MainMeanGetAllUseCase({required this.repository});

  @override
  Future<Either<Failure, List<MainMeanEntity>>> call() {
    return repository.getAll();
  }
}
