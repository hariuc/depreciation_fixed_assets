
import 'package:depreciation_fixed_assets_app/app/constants/app_constants_index.dart';
import 'package:flutter/material.dart';


class ElementMenuDrawerWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback? callback;
  final Color color;

  const ElementMenuDrawerWidget(
      {Key? key,
        required this.icon,
        required this.title,
        this.callback,
        this.color = ColorManager.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      trailing: const Icon(Icons.chevron_right_rounded),
      title: Text(
        title,
        style: StylesManager.getLightStyle(fontSize: FontSize.s16, color: color),
      ),
      onTap: callback,
    );
  }
}
