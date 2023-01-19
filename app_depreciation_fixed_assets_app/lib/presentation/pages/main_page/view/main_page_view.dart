import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_page/view/widgets/drawer_menu_widget.dart';
import 'package:flutter/material.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => _createBody();

  Widget _createBody() => Scaffold(
        appBar: AppBar(
          title: Text(
            "App",
            style: StylesManager.getLightStyle(fontSize: FontSize.s20, color: ColorManager.white),
          ),
        ),
        body: Center(
          child: Text("1"),
        ),
    drawer: const DrawerMenuWidget(),
      );
}
