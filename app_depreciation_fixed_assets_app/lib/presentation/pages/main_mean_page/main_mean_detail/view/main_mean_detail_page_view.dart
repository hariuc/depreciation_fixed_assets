import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/depreciation_method_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/annual_rate_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/depreciation_method_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/lifetime_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/name_main_mean_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:domain/enums/type_operation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  final _anualRateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text("1")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
        child: Column(
          children: _createColumnList(),
        ),
      ),
    );
  }

  List<Widget> _createColumnList() {
    final list = <Widget>[];

    list
      ..add(const SizedBox(
        height: AppSize.s16,
      ))
      ..add(NameMainMeanWidget(
        controller: _nameController,
      ))
      ..add(const SizedBox(
        height: AppSize.s16,
      ))
      ..add(const DepreciationMethodWidget())
      ..add(const SizedBox(
        height: AppSize.s16,
      ))
      ..add(Visibility(
          visible: true,
          child: Row(
            children: [
              Expanded(
                  child: LifeTimeWidget(
                controller: _lifeTimeController,
              )),
              const SizedBox(
                width: AppSize.s10,
              ),
              Expanded(
                  child: AnnualRateWidget(
                controller: _anualRateController,
              )),
            ],
          )))
      ..add(const SizedBox(
        height: AppSize.s16,
      ))
      ..add(SizedBox(
        width: double.infinity,
        child: ButtonWidget(
          callback: () {},
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
    _anualRateController.dispose();
  }
}
