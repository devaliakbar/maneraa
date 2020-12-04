import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/home.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/utils/hexcolor.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  static const String myRoute = '/';
  @override
  Widget build(BuildContext context) {
    AppTheme.screenHeight = MediaQuery.of(context).size.height;

    Timer(Duration(seconds: 2), () async {
      Navigator.of(context).pushNamedAndRemoveUntil(
          Home.myRoute, (Route<dynamic> route) => false);
    });

    return Scaffold(
      backgroundColor: HexColor("#F7F7F7"),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 90),
          child: Image.asset('assets/images/maneraa_main_logo.png'),
        ),
      ),
    );
  }
}
