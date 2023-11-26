import 'package:depreciation_fixed_assets_app/domain/modules/modules/main_mean/repository/main_mean_repository.dart';
import 'package:depreciation_fixed_assets_app/domain/modules/modules/main_mean/usecases/main_mean_getall_usecase.dart';
import 'package:get_it/get_it.dart';

Future<void> init() async {
  final domainDi = GetIt.instance;

  //main mean
  domainDi.registerLazySingleton<MainMeanGetAllUseCase>(
      () => MainMeanGetAllUseCase(repository: domainDi<MainMeanRepository>()));
}
