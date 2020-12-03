import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/widgets/loading_widget.dart';

class SliderWithoutIndicator extends StatelessWidget {
  final List items;

  SliderWithoutIndicator(this.items);

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
      items: items.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return CachedNetworkImage(
              imageUrl: item,
              placeholder: (context, url) => showLoading(),
              errorWidget: (context, url, error) => Icon(
                Icons.error_outline,
                color: Colors.black,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
