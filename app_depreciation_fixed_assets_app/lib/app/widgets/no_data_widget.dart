
import 'package:depreciation_fixed_assets_app/app/constants/app_constants_index.dart';
import 'package:flutter/material.dart';

class NoDataWidget extends StatelessWidget {
  final String noDataTitle;

  const NoDataWidget({Key? key, required this.noDataTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageAssets.noDataIcon(height: AppSize.s50, width: AppSize.s50),
        const SizedBox(
          height: AppSize.s8,
        ),
        Text(
          noDataTitle,
          style: StylesManager.getLightStyle(fontSize: FontSize.s16),
        )
      ],
    );
  }
}
