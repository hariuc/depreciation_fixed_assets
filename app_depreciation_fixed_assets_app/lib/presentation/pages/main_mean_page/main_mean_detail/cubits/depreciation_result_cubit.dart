import 'dart:developer';
import 'package:common/calculate_depreciation_fixed_assets.dart';
import 'package:domain/core/list_item.dart';
import 'package:domain/enums/depreciation_method.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepreciationResultCubit extends Cubit<List<ListItem>> {
  DepreciationResultCubit() : super([]);

  void changeValue(
      {required DepreciationMethod depreciationMethod,
      required double suma,
      required int yearDepreciation}) {
    log("[DepreciationResultCubit]: changeValue");
    //var resultList = <ListItem>[];
    // if (depreciationMethod == DepreciationMethod.straightforward) {
    final resultList = CalculateDepreciationFixedAssets()
        .straightforwardCalculation(suma: suma, yearDepreciation: yearDepreciation);
    // } else if (depreciationMethod == DepreciationMethod.cumulative) {
    //   resultList = CalculateDepreciationFixedAssets().cumulativeCalculation();
    // } else if (depreciationMethod == DepreciationMethod.production) {
    //   resultList = CalculateDepreciationFixedAssets().productionCalculation();
    // } else if (depreciationMethod == DepreciationMethod.decreasingBalance) {
    //   resultList = CalculateDepreciationFixedAssets().decreasingBalanceCalculation();
    // }

    emit(resultList);
  }
}
