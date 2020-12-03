import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/widgets/slider_without_indicator.dart';

class BuildBestSeller extends StatelessWidget {
  final List bestSellers;

  BuildBestSeller(this.bestSellers);

  @override
  Widget build(BuildContext context) {
    return SliderWithoutIndicator(bestSellers);
  }
}
