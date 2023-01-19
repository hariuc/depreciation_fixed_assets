import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/depreciation_fixed_assets_app.dart';
import 'package:depreciation_fixed_assets_app/simple_observer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  Bloc.observer = SimpleObserver();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('ro', 'RO'),
      ],
      fallbackLocale: const Locale('ru', 'RU'),
      saveLocale: false,
      path: localizationPath,
      child: const DepreciationFixedAssetsApp()));
}
