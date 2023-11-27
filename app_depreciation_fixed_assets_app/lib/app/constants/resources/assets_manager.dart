part of '../app_constants_index.dart';

const String imagePath = "assets/images";

class ImageAssets {
  static SvgPicture noDataIcon({double width = 24, double height = 24}) => SvgPicture.asset(
        '$imagePath/no_data_for_icon.svg',
        width: width,
        height: height,
      );

  static Image scsLogo({double width = 24.0, double height = 24.0}) {
    return Image.asset(
      '$imagePath/scs_logo.png',
      fit: BoxFit.contain,
      width: width,
      height: height,
    );
  }
}
