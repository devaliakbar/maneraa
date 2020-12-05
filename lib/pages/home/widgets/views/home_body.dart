import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/pages/home/widgets/partials/build_best_moments.dart';
import 'package:maneraa/pages/home/widgets/partials/build_best_selling.dart';
import 'package:maneraa/pages/home/widgets/partials/build_categories.dart';
import 'package:maneraa/pages/home/widgets/partials/build_posters.dart';
import 'package:maneraa/pages/home/widgets/partials/build_shop_by_categories.dart';
import 'package:maneraa/pages/home/widgets/partials/build_slider.dart';
import 'package:maneraa/pages/home/widgets/partials/home_title.dart';

class HomeBody extends StatelessWidget {
  final HomeModel homeData;
  HomeBody(this.homeData);
  @override
  Widget build(BuildContext context) {
    return ListView(
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
          homeData.bestMoments,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
