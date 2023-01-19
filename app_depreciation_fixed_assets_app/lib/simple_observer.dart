import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log("[SimpleObserver]: onCreate ${bloc.runtimeType}");
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log("[SimpleObserver]: onClose ${bloc.runtimeType}");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    log("[SimpleObserver]: onError ${bloc.runtimeType} $error");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log("[SimpleObserver]: onChange ${bloc.runtimeType} $change");
  }
}
