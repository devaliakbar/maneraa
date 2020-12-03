import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/widgets/slider_without_indicator.dart';

class BuildBestMoments extends StatelessWidget {
  final List bestMoments;

  BuildBestMoments(this.bestMoments);

  @override
  Widget build(BuildContext context) {
    return SliderWithoutIndicator(bestMoments);
  }
}
