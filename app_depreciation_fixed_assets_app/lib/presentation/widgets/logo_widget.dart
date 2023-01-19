import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double width;
  final double height;
  const LogoWidget({Key? key , this.width = AppSize.s70, this.height=AppSize.s70 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageAssets.scsLogo(width: width, height: height),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SOFT",
                style:
                    StylesManager.getMediumStyle(fontSize: FontSize.s28, color: ColorManager.black),
              ),
              Text(
                "CONTABIL",
                style:
                    StylesManager.getMediumStyle(fontSize: FontSize.s28, color: ColorManager.black),
              ),
              Text(
                "SOLUTION",
                style:
                    StylesManager.getMediumStyle(fontSize: FontSize.s28, color: ColorManager.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
