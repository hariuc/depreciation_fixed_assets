import 'dart:developer';

import 'package:depreciation_fixed_assets_app/common/year_rate_calculate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YearRateCubit extends Cubit<double> {
  YearRateCubit() : super(0.0);

  void changeValue({required int yearRate}) {
    log("[YearRateCubit]: changeValue $yearRate");
    emit(YearRateCalculate(lifeTime: yearRate).rateCalculate());
  }
}
