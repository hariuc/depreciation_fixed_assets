import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:flutter/material.dart';

class NameMainMeanWidget extends StatelessWidget {
  final TextEditingController controller;

  const NameMainMeanWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        style: StylesManager.getMediumStyle(
          fontSize: FontSize.s16,
        ),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.abc),
          border: const OutlineInputBorder(),
          labelText: "Наименование",
          labelStyle: StylesManager.getLightStyle(
            fontSize: FontSize.s16,
          ),
        ));
  }
}
