import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class StatusBarColor {
  static void setUpStatusbarColor(
      {Color backgroundColor, bool whiteColor = false}) async {
    if (backgroundColor == null) {
      backgroundColor = Colors.white;
    }
    await FlutterStatusbarcolor.setStatusBarColor(backgroundColor);
    FlutterStatusbarcolor.setStatusBarWhiteForeground(whiteColor);
  }
}
