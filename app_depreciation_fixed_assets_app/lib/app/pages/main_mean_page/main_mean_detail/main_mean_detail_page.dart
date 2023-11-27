import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/animation_opacity_cubit.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/depreciation_method_cubit.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/depreciation_result_cubit.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/initial_cost_validator_cubit.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/lifetime_validator_cubit.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/cubits/year_rate_cubit.dart';
import 'package:depreciation_fixed_assets_app/app/pages/main_mean_page/main_mean_detail/view/main_mean_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainMeanDetailPage extends StatelessWidget {
  const MainMeanDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => DepreciationMethodCubit()),
      BlocProvider(create: (context) => YearRateCubit()),
      BlocProvider(create: (context) => DepreciationResultCubit()),
      BlocProvider(create: (context) => InitialCostValidatorCubit()),
      BlocProvider(create: (context) => LifetimeValidatorCubit()),
      BlocProvider(create: (context) => AnimationOpacityCubit()),
    ], child: const MainMeanDetailPageView());
  }
}
