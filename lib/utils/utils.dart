import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class Utils {
  static setUpStatusbarColor(
      {Color backgroundColor, bool whiteColor = false}) async {
    if (backgroundColor == null) {
      backgroundColor = Colors.white;
    }
    await FlutterStatusbarcolor.setStatusBarColor(backgroundColor);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(whiteColor);
  }

  static bool isDoubleContainDecimal(double number) {
    String numberInString = number.toString();
    String decimalPartInString = numberInString.split(".")[1];
    int decimalPartInInt = int.parse(decimalPartInString);
    return decimalPartInInt > 0;
  }
}
