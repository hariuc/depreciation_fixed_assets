import 'package:depreciation_fixed_assets_app/constants/app_constants_index.dart';
import 'package:flutter/cupertino.dart';

class LoadingWidget extends StatelessWidget {
  final Color color;

  const LoadingWidget({Key? key, this.color = ColorManager.blue400}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        color: color,
      ),
    );
  }
}
