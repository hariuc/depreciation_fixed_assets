import 'package:depreciation_fixed_assets_app/app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/initial_cost_validator_cubit.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
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
          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: false),
          style: StylesManager.getMediumStyle(
            fontSize: FontSize.s16,
          ),
          onChanged: (String value) {
            BlocProvider.of<InitialCostValidatorCubit>(context).changeValue(value: true);
          },
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'))],
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.paid),
            border: const OutlineInputBorder(),
            labelText:
                stateValue ? LocaleKeys.initPriceLabel.tr() : LocaleKeys.initialCostLabelError.tr(),
            labelStyle: stateValue
                ? StylesManager.getLightStyle(
                    fontSize: FontSize.s10,
                  )
                : StylesManager.getLightStyle(fontSize: FontSize.s10, color: ColorManager.red400),
          ));
    });
  }
}
