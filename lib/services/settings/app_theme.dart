import 'package:flutter/material.dart';
import 'package:maneraa/utils/hexcolor.dart';

class AppTheme {
  static const double mediumScreenSize = 684;
  static double screenHeight = 0;

  static double iconSizeXS = screenHeight > mediumScreenSize ? 20.0 : 18.0;
  static double iconSizeS = screenHeight > mediumScreenSize ? 23.0 : 20.0;
  static double iconSizeM = screenHeight > mediumScreenSize ? 26.0 : 23.0;

  static double fontSizeS = screenHeight > mediumScreenSize ? 12.0 : 9.0;
  static double fontSizeM = screenHeight > mediumScreenSize ? 15.0 : 12.0;
  static double fontSizeL = screenHeight > mediumScreenSize ? 18.0 : 15.0;

  static final Color primaryGreyColor = HexColor('#55595c');
  static final Color secondaryGreyColor = HexColor('#f8f8f8');
}
