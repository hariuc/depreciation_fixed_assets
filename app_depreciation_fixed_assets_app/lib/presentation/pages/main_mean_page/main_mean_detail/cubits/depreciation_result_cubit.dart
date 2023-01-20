import 'dart:developer';
import 'package:common/calculate_depreciation_fixed_assets.dart';
import 'package:domain/core/list_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepreciationResultCubit extends Cubit<List<ListItem>> {
  DepreciationResultCubit() : super([]);

  void changeValue() {
    log("[DepreciationResultCubit]: changeValue");
    final resultList = CalculateDepreciationFixedAssets().straightforwardCalculation();
    emit(resultList);
  }
}
