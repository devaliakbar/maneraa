import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/pages/home/bloc/home_bloc.dart';
import 'package:maneraa/pages/home/widgets/build_best_moments.dart';
import 'package:maneraa/pages/home/widgets/build_best_selling.dart';
import 'package:maneraa/pages/home/widgets/build_categories.dart';
import 'package:maneraa/pages/home/widgets/build_header.dart';
import 'package:maneraa/pages/home/widgets/build_posters.dart';
import 'package:maneraa/pages/home/widgets/build_shop_by_categories.dart';
import 'package:maneraa/pages/home/widgets/build_slider.dart';
import 'package:maneraa/pages/home/widgets/home_title.dart';
import 'package:maneraa/utils/app_theme.dart';
import 'package:maneraa/utils/statusbar_color.dart';
import 'package:maneraa/widgets/loading_widget.dart';
import 'package:maneraa/widgets/normal_text.dart';

class Home extends StatelessWidget with WidgetsBindingObserver {
  static const String myRoute = '/home';

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      setUpStatusbarColor(
          backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(HomeLoadEvent());

    setUpStatusbarColor(
        backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    WidgetsBinding.instance.addObserver(this);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            print("Home State Changed");
          },
          builder: (context, state) {
            if (state is HomeLoadFailed) {
              return _buildError(state.errorMsg, context);
            } else if (state is HomeLoadedState) {
              return _buildBody(state.homeData, context);
            } else {
              return _buildLoading(context);
            }
          },
        ),
      ),
    );
  }

  Widget _buildLoading(BuildContext context) {
    return Column(
      children: [
        BuildHeader(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: showLoading(),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildError(String errorMsg, BuildContext context) {
    return Column(
      children: [
        BuildHeader(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: NormalText(
                errorMsg,
                color: Colors.red,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody(HomeData homeData, BuildContext context) {
    return Column(
      children: [
        BuildHeader(),
        Expanded(
          child: ListView(
            children: [
              BuildSlider(
                homeData.banners,
              ),
              SizedBox(
                height: 15,
              ),
              BuildCategories(homeData.categories),
              SizedBox(
                height: 15,
              ),
              HomeTitle("Best Selling"),
              SizedBox(
                height: 15,
              ),
              BuildBestSeller(
                homeData.bestSellings,
              ),
              SizedBox(
                height: 15,
              ),
              HomeTitle("Shop By Category"),
              SizedBox(
                height: 15,
              ),
              BuildShopByCategories(homeData.shopByCategories),
              SizedBox(
                height: 7,
              ),
              BuildPosters(homeData.posters),
              SizedBox(
                height: 15,
              ),
              HomeTitle("Best Moments"),
              SizedBox(
                height: 15,
              ),
              BuildBestMoments(
                [
                  "https://maneraa.com/public/uploads/banners/oEllOJKMOBzZZZurK3YMTbvGKnPGtUdszJhIVxXs.jpeg",
                  "https://maneraa.com/public/uploads/banners/u84Ad7FkoEQj7gXiL2JPz0NerG8SzlJ5aBfMzQIw.jpeg",
                  "https://maneraa.com/public/uploads/banners/ri0ihy2UEjXCWX09nZRsePzKYuZGNktoJEWR8kWJ.jpeg",
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
