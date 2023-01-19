import 'dart:async';

import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/routing/app_routers.dart';
import 'package:flutter/material.dart';

class SplashPageWidget extends StatefulWidget {
  const SplashPageWidget({Key? key,}) : super(key: key);

  @override
  State<SplashPageWidget> createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: DurationConstant.d3000), () {
      Navigator.pushReplacementNamed(context, AppRouters.mainPageRoute);
      //Navigator.pushAndRemoveUntil(context, newRoute, (route) => false)
      //Navigator.of(context).pushReplacementNamed(widget.mainScreenRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImageAssets.scsLogo(width: AppSize.s150, height: AppSize.s150),
      ),
    );
  }
}
