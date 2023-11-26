part of app_constants_index;

class StylesManager {
  static TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
    return TextStyle(
        fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);
  }

  static TextStyle getRegularStyle({double fontSize = FontSize.s12, Color color = ColorManager.black}) {
    return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
  }

  static TextStyle getLightStyle({double fontSize = FontSize.s12, Color color = ColorManager.black}) {
    return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
  }

  static TextStyle getBoldStyle({double fontSize = FontSize.s12, Color color = ColorManager.black}) {
    return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
  }

  static TextStyle getMediumStyle({double fontSize = FontSize.s12, Color color = ColorManager.black}) {
    return _getTextStyle(fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
  }
}
