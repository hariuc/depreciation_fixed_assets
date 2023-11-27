import 'dart:async';

import 'package:depreciation_fixed_assets_app/app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/app/routing/app_routers.dart';
import 'package:flutter/material.dart';

class SplashPageWidget extends StatefulWidget {
  const SplashPageWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashPageWidget> createState() => _SplashPageWidgetState();
}

class _SplashPageWidgetState extends State<SplashPageWidget> {
  var _animation = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animation = true;
      setState(() {});
      Timer(const Duration(milliseconds: DurationConstant.d4000), () {
        Navigator.pushReplacementNamed(context, AppRouters.mainPageRoute);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: DurationConstant.d3000),
        opacity: _animation ? 1.0 : 0.0,
        curve: Curves.easeIn,
        child: Center(
          child: ImageAssets.scsLogo(width: AppSize.s150, height: AppSize.s150),
        ),
      ),
    );
  }
}
