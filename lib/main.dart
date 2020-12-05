import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maneraa/pages/categories/bloc/categories_bloc.dart';
import 'package:maneraa/pages/categories/bloc/data/categories_repo.dart';
import 'package:maneraa/pages/categories/categories.dart';
import 'package:maneraa/pages/home/bloc/data/home_repo.dart';
import 'package:maneraa/pages/home/bloc/home_bloc.dart';
import 'package:maneraa/pages/home/home.dart';
import 'package:maneraa/pages/splash_screen/splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const webAppUrl = 'https://maneraa.com/';
  static const basicApiUrl = webAppUrl + "api/v1/";
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) {
            return HomeBloc(HomeRepo());
          },
        ),
        BlocProvider(
          create: (BuildContext context) {
            return CategoriesBloc(CategoriesRepo());
          },
        ),
      ],
      child: MaterialApp(
        title: 'Maneraa',
        theme:
            ThemeData(splashColor: Colors.transparent, fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case Home.myRoute:
              return PageTransition(
                child: Home(),
                type: PageTransitionType.rightToLeft,
                settings: settings,
              );
              break;

            case Categories.myRoute:
              return PageTransition(
                child: Categories(),
                type: PageTransitionType.rightToLeft,
                settings: settings,
              );
              break;

            default:
              return null;
          }
        },
      ),
    );
  }
}
