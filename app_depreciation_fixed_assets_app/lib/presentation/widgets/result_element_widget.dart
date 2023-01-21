import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:common/date_format_utils.dart';

class ResultElementWidget extends StatelessWidget {
  final ResultCalculateEntity resultCalculateEntity;

  const ResultElementWidget({Key? key, required this.resultCalculateEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s3,
      child: _dataWidget(),
    );
  }

  Widget _dataWidget() {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_firstWidget(), _secondWidget()],
      ),
    );
  }

  Widget _firstWidget() {
    return Row(
      children: [
        const Icon(Icons.calendar_month),
        const SizedBox(
          width: AppSize.s10,
        ),
        Text(
          LocaleKeys.dateFormat.tr(namedArgs: {
            "dateFormat":
                DateFormatUtils().formatDateMonthYear(date: resultCalculateEntity.dateTime)
          }),
          style: StylesManager.getRegularStyle(fontSize: FontSize.s16),
        )
      ],
    );
  }

  Widget _secondWidget() {
    return Row(
      children: [
        const Icon(Icons.paid),
        const SizedBox(
          width: AppSize.s10,
        ),
        Text(
          resultCalculateEntity.suma.toStringAsFixed(2),
          style: StylesManager.getRegularStyle(fontSize: FontSize.s16),
        )
      ],
    );
  }
}
