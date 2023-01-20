import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:flutter/material.dart';
import 'package:common/date_format_utils.dart';

class ResultElementWidget extends StatelessWidget {
  final ResultCalculateEntity resultCalculateEntity;

  const ResultElementWidget({Key? key, required this.resultCalculateEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s3,
      child: ListTile(
        title: Text(DateFormatUtils().formatDate(date: resultCalculateEntity.dateTime)),
        subtitle: Text(resultCalculateEntity.suma.toStringAsFixed(2)),
      ),
    );
  }
}
