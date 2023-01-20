import 'dart:developer';

import 'package:domain/core/list_item.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';

class CalculateDepreciationFixedAssets {
  List<ListItem> straightforwardCalculation() {
    final list = <ResultCalculateEntity>[];

    final dateNow = DateTime.now();
    final startDate = _getInitialDate(initDate: dateNow);
    final endDate = startDate.add(Duration(days: 3 * 365));
    var indexDate = startDate;
    final dataList = <Map<DateTime, double>>[];
    final sumaDay = 20000.0 / (2 * 365);
    final resultSet = <DateTime>{};
    final yearSet = <int>{};
    while (indexDate.compareTo(endDate) == -1) {
      dataList.add({indexDate: sumaDay});
      list.add(ResultCalculateEntity(dateTime: indexDate, suma: sumaDay));
      resultSet.add(DateTime(indexDate.year, indexDate.month, 1));
      yearSet.add(indexDate.year);
      indexDate = indexDate.add(Duration(days: 1));
    }
    //log("[CalculateDepreciationFixedAssets]: $dataList");
    //log("[CalculateDepreciationFixedAssets]: $resultSet");
    final newList = <ListItem>[];

    for (final yearElement in yearSet) {
      newList.add(HeaderResultEntity(dateTime: DateTime(yearElement)));
      for (final monthElement in resultSet) {
        final tempList = list.where((element) =>
            element.dateTime.year == yearElement && element.dateTime.month == monthElement.month);
        var tempSuma = 0.0;
        for (final element in tempList) {
          tempSuma += element.suma;
        }

        newList.add(ResultCalculateEntity(dateTime: monthElement, suma: tempSuma));
      }
    }

    // for (final monthElement in resultSet) {
    //   final tempList = list.where((element) =>
    //       element.dateTime.year == monthElement.year &&
    //       element.dateTime.month == monthElement.month);
    //   var tempSuma = 0.0;
    //   for (final element in tempList) {
    //     tempSuma += element.suma;
    //   }
    //
    //   newList.add(ResultCalculateEntity(dateTime: monthElement, suma: tempSuma));
    // }
    return newList;
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
