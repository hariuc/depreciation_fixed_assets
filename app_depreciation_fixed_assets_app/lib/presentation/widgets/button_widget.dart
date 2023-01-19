import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback callback;
  final Widget child;

  const ButtonWidget({Key? key, required this.callback, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: AppSize.s40,
      onPressed: callback,
      elevation: AppSize.s3,
      color: ColorManager.blue300,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s8)),
      child: child,
    );
  }
}
