import 'package:depreciation_fixed_assets_app/common/calculate_depreciation_fixed_assets.dart';
import 'package:depreciation_fixed_assets_app/common/logger_utils.dart';
import 'package:depreciation_fixed_assets_app/domain/core/list_item.dart';
import 'package:depreciation_fixed_assets_app/domain/enums/depreciation_method.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepreciationResultCubit extends Cubit<List<ListItem>> {
  DepreciationResultCubit() : super([]);

  void changeValue(
      {required DepreciationMethod depreciationMethod,
      required double suma,
      required int yearDepreciation}) {
    LoggerUtils.info(message: "[${toString()}]: changeValue");

    final resultList =
        CalculateDepreciationFixedAssets(suma: suma, yearDepreciation: yearDepreciation)
            .straightforwardCalculation();

    emit(resultList);
  }
}
