import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/depreciation_method_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/view/main_mean_detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainMeanDetailPage extends StatelessWidget {
  const MainMeanDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DepreciationMethodCubit(),
      child: const MainMeanDetailPageView(),
    );
  }
}
