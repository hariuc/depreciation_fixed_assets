import 'package:depreciation_fixed_assets_app/app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TotalResultElementWidget extends StatelessWidget {
  final TotalResultYearEntity totalResultYearEntity;

  const TotalResultElementWidget({Key? key, required this.totalResultYearEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: AppSize.s3,
      color: ColorManager.blue100,
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
        Text(
          LocaleKeys.totalSuma.tr(),
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
          totalResultYearEntity.suma.toStringAsFixed(2),
          style: StylesManager.getRegularStyle(fontSize: FontSize.s16),
        )
      ],
    );
  }
}
