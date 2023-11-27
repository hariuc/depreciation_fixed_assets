import 'package:depreciation_fixed_assets_app/app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:easy_localization/easy_localization.dart';
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
          labelText: "${LocaleKeys.nameTitle.tr()}",
          labelStyle: StylesManager.getLightStyle(
            fontSize: FontSize.s16,
          ),
        ));
  }
}
