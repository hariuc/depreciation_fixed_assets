import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/depreciation_result_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/result_element_wiget.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultListWidget extends StatelessWidget {
  const ResultListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<DepreciationResultCubit, List<ResultCalculateEntity>>(
      builder: (context, stateValue) {
        if (stateValue.isEmpty) {
          return const SizedBox();
        } else {
          return ListView.builder(
              itemCount: stateValue.length,
              itemBuilder: (context, index) {
                return ResultElementWidget(resultCalculateEntity: stateValue[index]);
              });
        }
      },
    ));
  }
}
