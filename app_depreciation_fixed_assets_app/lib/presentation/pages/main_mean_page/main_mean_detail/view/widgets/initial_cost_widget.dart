import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/initial_cost_validator_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialCostWidget extends StatelessWidget {
  final TextEditingController controller;

  const InitialCostWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitialCostValidatorCubit, bool>(builder: (_, stateValue) {
      return TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: StylesManager.getMediumStyle(
            fontSize: FontSize.s16,
          ),
          onChanged: (String value) {
            BlocProvider.of<InitialCostValidatorCubit>(context).changeValue(value: true);
          },
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"))],
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.abc),
            border: const OutlineInputBorder(),
            labelText:
                stateValue ? LocaleKeys.initPriceLabel.tr() : LocaleKeys.initialCostLabelError.tr(),
            labelStyle: stateValue
                ? StylesManager.getLightStyle(
                    fontSize: FontSize.s14,
                  )
                : StylesManager.getLightStyle(fontSize: FontSize.s14, color: ColorManager.red400),
          ));
    });
  }
}
