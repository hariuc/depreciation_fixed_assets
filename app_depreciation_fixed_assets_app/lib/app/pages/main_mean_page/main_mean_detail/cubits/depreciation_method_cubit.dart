import 'package:depreciation_fixed_assets_app/common/logger_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepreciationMethodCubit extends Cubit<List<bool>> {
  DepreciationMethodCubit() : super([true, false, false, false]);

  void changeValue({required int index}) {
    LoggerUtils.info(message: "[${toString()}]: changeValue $index");
    final newArray = <bool>[];
    for (int i = 0; i < 4; i++) {
      newArray.add(i == index ? true : false);
    }
    emit(newArray);
  }
}
