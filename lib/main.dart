import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maneraa/pages/home/bloc/data/home_repo.dart';
import 'package:maneraa/pages/home/bloc/home_bloc.dart';
import 'package:maneraa/pages/home/home.dart';
import 'package:maneraa/pages/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const webAppUrl = 'https://maneraa.com/';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) {
            return HomeBloc(HomeRepo());
          },
        ),
      ],
      child: MaterialApp(
        title: 'Maneraa',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(splashColor: Colors.transparent, fontFamily: 'Poppins'),
        routes: {
          SplashScreen.myRoute: (BuildContext context) => SplashScreen(),
          Home.myRoute: (BuildContext context) => Home(),
        },
      ),
    );
  }
}
