import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class InitialCostValidatorCubit extends Cubit<bool> {
  InitialCostValidatorCubit() : super(true);

  void changeValue({required bool value}) {
    log("[InitialCostValidatorCubit]: changeValue $value");
    emit(value);
  }
}
