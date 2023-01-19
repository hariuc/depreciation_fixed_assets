import 'package:depreciation_fixed_assets_app/presentation/pages/main_page/main_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DepreciationFixedAssetsApp extends StatelessWidget {
  const DepreciationFixedAssetsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
