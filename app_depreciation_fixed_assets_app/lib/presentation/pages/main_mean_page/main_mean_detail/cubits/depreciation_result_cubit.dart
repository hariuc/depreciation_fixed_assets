import 'dart:developer';
import 'package:common/calculate_depreciation_fixed_assets.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepreciationResultCubit extends Cubit<List<ResultCalculateEntity>> {
  DepreciationResultCubit() : super([]);

  void changeValue() {
    log("[DepreciationResultCubit]: changeValue");
    final resultList = CalculateDepreciationFixedAssets().straightforwardCalculation();
    emit(resultList);
  }
}
