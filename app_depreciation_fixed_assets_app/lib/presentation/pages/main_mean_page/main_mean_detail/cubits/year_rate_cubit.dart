import 'dart:developer';

import 'package:common/year_rate_calculate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YearRateCubit extends Cubit<double> {
  YearRateCubit() : super(0.0);

  void changeValue({required int yearRate}) {
    log("[YearRateCubit]: changeValue $yearRate");
    emit(YearRateCalculate().rateCalculate(lifeTime: yearRate));
  }
}
