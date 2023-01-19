import 'package:depreciation_fixed_assets_app/depreciation_fixed_assets_app.dart';
import 'package:depreciation_fixed_assets_app/simple_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  Bloc.observer = SimpleObserver();
  runApp(const DepreciationFixedAssetsApp());
}
