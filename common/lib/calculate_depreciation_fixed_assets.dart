import 'dart:developer';

import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';

class CalculateDepreciationFixedAssets {
  List<ResultCalculateEntity> straightforwardCalculation() {
    final list = <ResultCalculateEntity>[];

    final dateNow = DateTime.now();
    final startDate = _getInitialDate(initDate: dateNow);
    final endDate = startDate.add(Duration(days: 3 * 365));
    var indexDate = startDate;
    final dataList = <Map<DateTime, double>>[];

    while (indexDate.compareTo(endDate) == -1) {
      dataList.add({indexDate: 0.0});
      indexDate = indexDate.add(Duration(days: 1));
    }
    log("[CalculateDepreciationFixedAssets]: $dataList");
    return list;
  }

  DateTime _getInitialDate({required DateTime initDate}) {
    var day1 = initDate;
    while (true) {
      day1 = day1.add(Duration(days: 1));
      if (day1.day == 1) {
        break;
      }
    }
    return day1;
  }
}
