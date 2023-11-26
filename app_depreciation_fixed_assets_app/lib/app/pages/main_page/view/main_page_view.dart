import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/main_mean_detail_page.dart';

import 'package:depreciation_fixed_assets_app/presentation/pages/main_page/view/widgets/drawer_menu_widget.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: AppSize.s3,
        title: Text(
          LocaleKeys.appName.tr(),
          style: StylesManager.getBoldStyle(fontSize: FontSize.s20, color: ColorManager.black),
        ),
      ),
      body: const MainMeanDetailPage(),
      drawer: const DrawerMenuWidget(),
    );
  }
}
