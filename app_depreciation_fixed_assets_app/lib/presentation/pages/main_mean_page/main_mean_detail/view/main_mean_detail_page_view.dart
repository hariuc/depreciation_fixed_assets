import 'dart:developer';

import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:common/calculate_depreciation_fixed_assets.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/annual_rate_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/depreciation_method_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/initial_cost_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/lifetime_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/name_main_mean_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/year_rate_text_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:domain/enums/type_operation.dart';

class MainMeanDetailPageView extends StatefulWidget {
  final TypeOperation typeOperation;

  const MainMeanDetailPageView({Key? key, this.typeOperation = TypeOperation.newElement})
      : super(key: key);

  @override
  State<MainMeanDetailPageView> createState() => _MainMeanDetailPageViewState();
}

class _MainMeanDetailPageViewState extends State<MainMeanDetailPageView> {
  final _nameController = TextEditingController();
  final _lifeTimeController = TextEditingController();

  //final _yearRateController = TextEditingController();
  final _initCostController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      child: Column(
        children: _createColumnList(),
      ),
    );
  }

  List<Widget> _createColumnList() {
    final list = <Widget>[];

    list
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      // ..add(NameMainMeanWidget(
      //   controller: _nameController,
      // ))
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      ..add(const DepreciationMethodWidget())
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      ..add(InitialCostWidget(
        controller: _initCostController,
      ))
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      ..add(LifeTimeWidget(
        controller: _lifeTimeController,
      ))
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      // ..add(AnnualRateWidget(
      //   controller: _yearRateController,
      // ))
      ..add(const YearRateTextWidget())
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      ..add(SizedBox(
        width: double.infinity,
        child: ButtonWidget(
          callback: () {
            log("[MainMeanDetailPageView]: straightforwardCalculation");
            final a = CalculateDepreciationFixedAssets().straightforwardCalculation();
            print(a.toString());
          },
          child: Text(
            "Расчет",
            style: StylesManager.getBoldStyle(fontSize: FontSize.s16, color: ColorManager.white),
          ),
        ),
      ));

    return list;
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _lifeTimeController.dispose();
    //_yearRateController.dispose();
    _initCostController.dispose();
  }
}
