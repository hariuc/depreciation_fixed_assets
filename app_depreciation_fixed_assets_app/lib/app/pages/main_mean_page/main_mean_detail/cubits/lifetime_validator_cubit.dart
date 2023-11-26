import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class LifetimeValidatorCubit extends Cubit<bool> {
  LifetimeValidatorCubit() : super(true);

  void changeValue({required bool value}) {
    log("[LifetimeValidatorCubit]: changeValue $value");
    emit(value);
  }
}
