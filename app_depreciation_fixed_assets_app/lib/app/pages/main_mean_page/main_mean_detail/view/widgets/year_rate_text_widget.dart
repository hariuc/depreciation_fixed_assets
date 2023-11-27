import 'package:depreciation_fixed_assets_app/app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/year_rate_cubit.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YearRateTextWidget extends StatelessWidget {
  const YearRateTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${LocaleKeys.annualRate.tr()} (%):",
            style: StylesManager.getMediumStyle(
              fontSize: FontSize.s16,
            )),
        const SizedBox(
          width: AppSize.s10,
        ),
        BlocBuilder<YearRateCubit, double>(builder: (_, stateValue) {
          return Text(
            stateValue.toStringAsFixed(4),
            style: StylesManager.getBoldStyle(fontSize: FontSize.s16),
          );
        }),
      ],
    );
  }
}
