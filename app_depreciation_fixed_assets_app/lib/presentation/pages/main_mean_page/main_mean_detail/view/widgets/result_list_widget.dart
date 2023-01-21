import 'package:depreciation_fixed_assets_app/presentation/pages/main_mean_page/main_mean_detail/cubits/depreciation_result_cubit.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/header_result_element_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/result_element_widget.dart';
import 'package:depreciation_fixed_assets_app/presentation/widgets/total_result_element_widget.dart';
import 'package:domain/core/list_item.dart';

import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultListWidget extends StatelessWidget {
  const ResultListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<DepreciationResultCubit, List<ListItem>>(
      builder: (context, stateValue) {
        if (stateValue.isEmpty) {
          return const SizedBox();
        } else {
          return ListView.builder(
              itemCount: stateValue.length,
              itemBuilder: (context, index) {
                if (stateValue[index] is HeaderResultEntity) {
                  final headerElement = stateValue[index] as HeaderResultEntity;
                  return HeaderResultElementWidget(
                    headerResultEntity: headerElement,
                  );
                } else if (stateValue[index] is TotalResultYearEntity) {
                  final totalElement = stateValue[index] as TotalResultYearEntity;
                  return TotalResultElementWidget(
                    totalResultYearEntity: totalElement,
                  );
                } else {
                  final element = stateValue[index] as ResultCalculateEntity;
                  return ResultElementWidget(resultCalculateEntity: element);
                }
              });
        }
      },
    ));
  }
}
