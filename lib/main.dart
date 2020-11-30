import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/home.dart';
import 'package:maneraa/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Maneraa',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(splashColor: Colors.transparent, fontFamily: 'Poppins'),
        routes: {
          SplashScreen.myRoute: (BuildContext context) => SplashScreen(),
          Home.myRoute: (BuildContext context) => Home(),
        });
  }
}
