import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/year_rate_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnualRateWidget extends StatelessWidget {
  final TextEditingController controller;

  const AnnualRateWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YearRateCubit, double>(builder: (_, stateValue) {
      controller.text = stateValue.toStringAsFixed(2);
      return TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: StylesManager.getMediumStyle(
            fontSize: FontSize.s16,
          ),
          readOnly: true,
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"))],
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.abc),
            border: const OutlineInputBorder(),
            labelText: "Годовая норма (%)",
            labelStyle: StylesManager.getLightStyle(
              fontSize: FontSize.s14,
            ),
          ));
    });
  }
}
