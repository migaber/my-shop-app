import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionteScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;

  return (inputHeight / 812.0) * screenHeight;
}

double getProportionteScreenWidth(double inputHeight) {
  double screenWidth = SizeConfig.screenWidth;

  return (inputHeight / 375.0) * screenWidth;
}
