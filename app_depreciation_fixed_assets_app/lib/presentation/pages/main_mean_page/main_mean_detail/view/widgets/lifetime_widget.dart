import 'dart:developer';

import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/year_rate_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:common/year_rate_calculate';
import 'package:flutter_bloc/flutter_bloc.dart';

class LifeTimeWidget extends StatelessWidget {
  final TextEditingController controller;

  const LifeTimeWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: StylesManager.getMediumStyle(
          fontSize: FontSize.s16,
        ),
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))],
        onChanged: (String value) {
          log("[LifeTimeWidget]: onChanged $value");
          BlocProvider.of<YearRateCubit>(context).changeValue(yearRate: int.parse(controller.text));
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.abc),
          border: const OutlineInputBorder(),
          labelText: "Срок эксплуатации (лет)",
          labelStyle: StylesManager.getLightStyle(
            fontSize: FontSize.s14,
          ),
        ));
  }
}
