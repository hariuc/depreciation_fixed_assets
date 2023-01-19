import 'dart:developer';

import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/element_menu_drawer_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/logo_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _createDrawerHeader(),
          ..._createDrawerMenu(context: context),
        ],
      ),
    );
  }

  Widget _createDrawerHeader() {
    return const DrawerHeader(
      child: LogoWidget(),
    );
  }

  List<Widget> _createDrawerMenu({required BuildContext context}) {
    final list = <Widget>[];

    list
      ..add(const SizedBox(
        height: AppSize.s8,
      ))
      ..add(Container(
        height: AppSize.s1,
        color: Colors.black,
      ))
      ..add(const SizedBox(
        height: AppSize.s8,
      ))
      ..add(ElementMenuDrawerWidget(
        title: LocaleKeys.softwareDevelopment.tr(),
        icon: ImageAssets.scsLogo(),
        callback: () async {
          log("[DrawerMenuWidget]: softwareDevelopmentPath");
          // LoggerUtils()
          //     .info(message: "[DrawerMenuWidget]: softwareDevelopmentPath");
          //
          // await launchUrl(Uri.parse(softwareDevelopmentPath));
        },
      ))
      ..add(const SizedBox(
        height: AppSize.s8,
      ))
      ..add(ElementMenuDrawerWidget(
        title: LocaleKeys.whatIsNew.tr(),
        icon: const Icon(
          Icons.info,
        ),
        callback: () async {
          log("[DrawerMenuWidget]: whatIsNew");

          // await launchUrl(Uri.parse(whatIsNewPath));
        },
      ))
      ..add(const SizedBox(
        height: AppSize.s8,
      ))
      ..add(ElementMenuDrawerWidget(
        title: LocaleKeys.help.tr(),
        icon: const Icon(
          Icons.help_center,
        ),
        callback: () async {
          log("[DrawerMenuWidget]: help");
          //await launchUrl(Uri.parse(helpPath));
        },
      ))
      ..add(const SizedBox(
        height: AppSize.s8,
      ))
      ..add(ElementMenuDrawerWidget(
        title: LocaleKeys.share.tr(),
        icon: const Icon(
          Icons.share,
        ),
        callback: () async {
          log("[DrawerMenuWidget]: share");
          // Share.share(pathOnGoogePlay);
        },
      ))
      ..add(const SizedBox(
        height: AppSize.s8,
      ))
      ..add(ElementMenuDrawerWidget(
        title: LocaleKeys.privacyPolicy.tr(),
        icon: const Icon(
          Icons.privacy_tip,
        ),
        callback: () async {
          log("[DrawerMenuWidget]: privacyPolicy");
          // await launchUrl(Uri.parse(privacyPolicyPath));
        },
      ));

    return list;
  }
}
