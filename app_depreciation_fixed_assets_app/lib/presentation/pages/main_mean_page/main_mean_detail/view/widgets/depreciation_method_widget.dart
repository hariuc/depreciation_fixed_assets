import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/depreciation_method_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Widget> fruits = <Widget>[
  Text('Прямолинейный', textAlign: TextAlign.center),
  Text('Производственный', textAlign: TextAlign.center),
  Text('Кумулятивный', textAlign: TextAlign.center),
  Text('Уменьшающегося остатка', textAlign: TextAlign.center),
];

class DepreciationMethodWidget extends StatelessWidget {
  const DepreciationMethodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepreciationMethodCubit, List<bool>>(builder: (context, stateValue) {
      return LayoutBuilder(
        builder: (context, constraints) {
          return ToggleButtons(
              textStyle: StylesManager.getMediumStyle(
                fontSize: FontSize.s10,
              ),
              direction: Axis.horizontal,
              borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
              selectedBorderColor: ColorManager.blue700,
              fillColor: ColorManager.blue300,
              selectedColor: ColorManager.white,
              constraints: BoxConstraints.expand(width: constraints.maxWidth / 4),
              onPressed: (int index) {
                BlocProvider.of<DepreciationMethodCubit>(context).changeValue(index: index);
              },
              isSelected: stateValue,
              children: fruits);
        },
      );
    });
  }
}
