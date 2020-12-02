import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/home.dart';
import 'package:maneraa/utils/app_theme.dart';
import 'package:maneraa/utils/hexcolor.dart';
import 'dart:async';

import 'package:maneraa/utils/statusbar_color.dart';

class SplashScreen extends StatelessWidget {
  static const String myRoute = '/';
  @override
  Widget build(BuildContext context) {
    AppTheme.screenHeight = MediaQuery.of(context).size.height;
    setUpStatusbarColor(backgroundColor: HexColor("#262223"), whiteColor: true);

    Timer(Duration(seconds: 2), () async {
      Navigator.of(context).pushNamedAndRemoveUntil(
          Home.myRoute, (Route<dynamic> route) => false);
    });

    return Scaffold(
      backgroundColor: HexColor("#262223"),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Image.asset('assets/images/belllab_logo.png'),
        ),
      ),
    );
  }
}
