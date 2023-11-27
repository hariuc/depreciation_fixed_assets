import 'package:depreciation_fixed_assets_app/common/logger_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialCostValidatorCubit extends Cubit<bool> {
  InitialCostValidatorCubit() : super(true);

  void changeValue({required bool value}) {
    LoggerUtils.info(message: "[${toString()}]: changeValue $value");
    emit(value);
  }
}
