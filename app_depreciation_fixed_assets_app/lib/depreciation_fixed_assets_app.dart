import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/main_mean_detail_page.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_page/main_page.dart';
import 'package:depreciation_fixed_assets_app/app/routing/app_routers.dart';
import 'package:depreciation_fixed_assets_app/app/widgets/splash_page_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DepreciationFixedAssetsApp extends StatelessWidget {
  const DepreciationFixedAssetsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        routes: {
          AppRouters.mainPageRoute: (_) => const MainPage(),
          AppRouters.mainMeanDetailPage: (_) => const MainMeanDetailPage(),
        },
        home: const SplashPageWidget());
  }
}
