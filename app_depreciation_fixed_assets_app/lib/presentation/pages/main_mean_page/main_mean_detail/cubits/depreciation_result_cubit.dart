import 'dart:developer';
import 'package:common/calculate_depreciation_fixed_assets.dart';
import 'package:domain/core/list_item.dart';
import 'package:domain/enums/depreciation_method.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepreciationResultCubit extends Cubit<List<ListItem>> {
  DepreciationResultCubit() : super([]);

  void changeValue({required DepreciationMethod depreciationMethod}) {
    log("[DepreciationResultCubit]: changeValue");
    var resultList = <ListItem>[];
    if (depreciationMethod == DepreciationMethod.straightforward) {
      resultList = CalculateDepreciationFixedAssets().straightforwardCalculation();
    } else if (depreciationMethod == DepreciationMethod.cumulative) {
      resultList = CalculateDepreciationFixedAssets().cumulativeCalculation();
    } else if (depreciationMethod == DepreciationMethod.production) {
      resultList = CalculateDepreciationFixedAssets().productionCalculation();
    } else if (depreciationMethod == DepreciationMethod.decreasingBalance) {
      resultList = CalculateDepreciationFixedAssets().decreasingBalanceCalculation();
    }

    emit(resultList);
  }
}
