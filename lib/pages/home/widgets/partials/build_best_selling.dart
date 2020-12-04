import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/widgets/custom_loading.dart';

class BuildBestSeller extends StatelessWidget {
  final List<HomeBestSelling> bestSellers;

  BuildBestSeller(this.bestSellers);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1.0,
        aspectRatio: 1,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
      items: bestSellers.map(
        (bestSelling) {
          return Builder(
            builder: (BuildContext context) {
              return CachedNetworkImage(
                imageUrl: bestSelling.image,
                placeholder: (context, url) => CustomLoading.showLoading(),
                errorWidget: (context, url, error) => Icon(
                  Icons.error_outline,
                  color: Colors.black,
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }
}
