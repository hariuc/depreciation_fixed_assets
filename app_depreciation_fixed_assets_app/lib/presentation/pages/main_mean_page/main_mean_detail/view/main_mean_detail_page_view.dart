import 'dart:developer';
import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/animation_opacity_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/depreciation_result_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/initial_cost_validator_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/lifetime_validator_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/initial_cost_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/lifetime_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/widgets/result_list_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/button_widget.dart';
import 'package:depreciation_fixed_assets_app/utils/show_message.dart';
import 'package:domain/enums/depreciation_method.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:domain/enums/type_operation.dart';
import 'package:flutter/scheduler.dart';
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
  final _initCostController = TextEditingController();
  var _animation = false;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AnimationOpacityCubit>(context).changeValue(value: true);
      _animation = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: DurationConstant.d2000),
      opacity: _animation ? 1.0 : 0.0,
      curve: Curves.easeInCubic,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
        child: Column(
          children: _createColumnList(),
        ),
      ),
      onEnd: () {
        print("11111111111111111");
      },
    );
  }

  List<Widget> _createColumnList() {
    final list = <Widget>[];

    list
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      ..add(Row(
        children: [
          Expanded(
              child: InitialCostWidget(
            controller: _initCostController,
          )),
          const SizedBox(
            width: AppSize.s4,
          ),
          Expanded(
              child: LifeTimeWidget(
            controller: _lifeTimeController,
          )),
        ],
      ))
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      ..add(ResultListWidget(
        asyncCallback: () async {
          _calculateButtonAction(context: context);
        },
      ))
      ..add(const SizedBox(
        height: AppSize.s12,
      ))
      ..add(SizedBox(
        width: double.infinity,
        child: ButtonWidget(
          callback: () {
            _calculateButtonAction(context: context);
          },
          child: Text(
            LocaleKeys.calculateOperation.tr(),
            style: StylesManager.getBoldStyle(fontSize: FontSize.s16, color: ColorManager.white),
          ),
        ),
      ))
      ..add(const SizedBox(
        height: AppSize.s12,
      ));

    return list;
  }

  @override
  void deactivate() {
    super.deactivate();
    BlocProvider.of<AnimationOpacityCubit>(context).changeValue(value: false);
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _lifeTimeController.dispose();
    _initCostController.dispose();
  }

  Future<void> _calculateButtonAction({required BuildContext context}) async {
    log("[MainMeanDetailPageView]: _calculateButtonAction");
    if (_initCostController.text.trim().isEmpty) {
      ShowMessage.showSnackBar(context, LocaleKeys.initialCostEmptyErrorMessage.tr());
      BlocProvider.of<InitialCostValidatorCubit>(context).changeValue(value: false);
      if (_lifeTimeController.text.trim().isEmpty) {
        BlocProvider.of<LifetimeValidatorCubit>(context).changeValue(value: false);
      }
      return;
    }

    if (_lifeTimeController.text.trim().isEmpty) {
      BlocProvider.of<LifetimeValidatorCubit>(context).changeValue(value: false);
      ShowMessage.showSnackBar(context, LocaleKeys.lifeTimeEmptyErrorMessage.tr());
      return;
    }
    BlocProvider.of<InitialCostValidatorCubit>(context).changeValue(value: true);
    BlocProvider.of<LifetimeValidatorCubit>(context).changeValue(value: true);
    BlocProvider.of<DepreciationResultCubit>(context).changeValue(
        depreciationMethod: DepreciationMethod.straightforward,
        suma: double.parse(_initCostController.text),
        yearDepreciation: int.parse(_lifeTimeController.text));
  }
}
