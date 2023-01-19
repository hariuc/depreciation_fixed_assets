import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnualRateWidget extends StatelessWidget {
  final TextEditingController controller;

  const AnnualRateWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: StylesManager.getMediumStyle(
          fontSize: FontSize.s16,
        ),
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r"[0-9.]"))],
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.abc),
          border: const OutlineInputBorder(),
          labelText: "Годовая норма (%)",
          labelStyle: StylesManager.getLightStyle(
            fontSize: FontSize.s16,
          ),
        ));
  }
}
