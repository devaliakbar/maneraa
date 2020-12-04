import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maneraa/pages/home/bloc/home_bloc.dart';
import 'package:maneraa/pages/home/widgets/partials/build_drawer.dart';
import 'package:maneraa/pages/home/widgets/partials/build_app_bar.dart';
import 'package:maneraa/pages/home/widgets/views/home_body.dart';
import 'package:maneraa/pages/home/widgets/views/home_error.dart';
import 'package:maneraa/pages/home/widgets/views/home_loading.dart';
import 'package:maneraa/services/settings/status_bar_color.dart';
import 'package:maneraa/services/settings/app_theme.dart';

class Home extends StatelessWidget with WidgetsBindingObserver {
  static const String myRoute = '/home';

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      StatusBarColor.setUpStatusbarColor(
          backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(HomeLoadEvent());

    StatusBarColor.setUpStatusbarColor(
        backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);

    WidgetsBinding.instance.addObserver(this);

    return Scaffold(
      backgroundColor: Colors.white,
      drawer: BuildDrawer(),
      appBar: BuildAppBar(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            print("Home State Changed");
          },
          builder: (context, state) {
            if (state is HomeLoadFailed) {
              return HomeError(state.errorMsg);
            } else if (state is HomeLoadedState) {
              return HomeBody(state.homeData);
            } else {
              return HomeLoading();
            }
          },
        ),
      ),
    );
  }
}
