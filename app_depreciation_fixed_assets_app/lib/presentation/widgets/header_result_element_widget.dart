import 'package:common/date_format_utils.dart';
import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:depreciation_fixed_assets_app/generated/locale_keys.loc.dart';
import 'package:domain/modules/modules/main_mean/models/main_mean_index.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HeaderResultElementWidget extends StatelessWidget {
  final HeaderResultEntity headerResultEntity;

  const HeaderResultElementWidget({Key? key, required this.headerResultEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LocaleKeys.dateFormat.tr(namedArgs: {
        "dateFormat": DateFormatUtils().formatYear(date: headerResultEntity.dateTime)
      }),
      style: StylesManager.getRegularStyle(fontSize: FontSize.s16),
    );
  }
}
