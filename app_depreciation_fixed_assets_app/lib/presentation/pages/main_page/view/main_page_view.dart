import 'dart:developer';

import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/main_mean_detail_page.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_page/view/widgets/add_new_main_mean_button.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_page/view/widgets/drawer_menu_widget.dart';
import 'package:depreciation_fixed_assets_app/routing/app_routers.dart';
import 'package:flutter/material.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Износ основных средств",
          style: StylesManager.getLightStyle(fontSize: FontSize.s20, color: ColorManager.white),
        ),
      ),
      body: const MainMeanDetailPage(),
      drawer: const DrawerMenuWidget(),
      // floatingActionButton: AddNewMainMeanButton(
      //   callback: () {
      //     _addNewMainMeanAction(context: context);
      //   },
      // ),
    );
  }

// void _addNewMainMeanAction({required BuildContext context}) {
//   log("[MainPageView]: _addNewMainMeanAction");
//   Navigator.pushNamed(context, AppRouters.mainMeanDetailPage);
// }
}
