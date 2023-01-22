import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationOpacityCubit extends Cubit<bool> {
  AnimationOpacityCubit() : super(false);
  void changeValue({required bool value}){
    log("[AnimationOpacityCubit]: changeValue $value");
    emit(value);
  }
}
