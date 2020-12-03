import 'package:flutter/material.dart';
import 'package:maneraa/utils/hexcolor.dart';

class AppTheme {
  static const double mediumScreenSize = 684;
  static double screenHeight = 0;

  static double iconSizeM = screenHeight > mediumScreenSize ? 27.0 : 23.0;

  static double fontSizeM = screenHeight > mediumScreenSize ? 15.0 : 12.0;
  static double fontSizeL = screenHeight > mediumScreenSize ? 18.0 : 15.0;

  static final Color primaryGreyColor = HexColor('#55595c');
  static final Color secondaryGreyColor = HexColor('#f8f8f8');
}
