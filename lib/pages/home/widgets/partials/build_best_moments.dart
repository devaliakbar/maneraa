import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/widgets/image_from_network.dart';

class BuildBestMoments extends StatelessWidget {
  final List<HomeBestMoments> bestMoments;

  BuildBestMoments(this.bestMoments);

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
      items: bestMoments.map(
        (bestMoment) {
          return Builder(
            builder: (BuildContext context) {
              return ImageFromNetwork(
                bestMoment.image,
              );
            },
          );
        },
      ).toList(),
    );
  }
}
