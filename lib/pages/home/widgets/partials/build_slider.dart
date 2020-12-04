import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/widgets/image_from_network.dart';

class BuildSlider extends StatefulWidget {
  final List<HomeBanner> banners;

  BuildSlider(this.banners);

  @override
  State<StatefulWidget> createState() {
    return _BuildSliderState();
  }
}

class _BuildSliderState extends State<BuildSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildSlider(),
        Positioned(
          bottom: 10,
          right: 7,
          child: _buildIndicator(),
        )
      ],
    );
  }

  Widget _buildSlider() {
    return CarouselSlider(
      options: CarouselOptions(
          viewportFraction: 1.0,
          aspectRatio: 1,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          onPageChanged: (int index, _) {
            if (mounted) {
              setState(() {
                _currentIndex = index;
              });
            }
          }),
      items: widget.banners.map((banner) {
        return Builder(
          builder: (BuildContext context) {
            return ImageFromNetwork(banner.image);
          },
        );
      }).toList(),
    );
  }

  Widget _buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: widget.banners.map((banner) {
        int index = widget.banners.indexOf(banner);
        return Container(
          width: 30.0,
          height: 5.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
          color: _currentIndex == index ? Colors.red : Colors.white,
        );
      }).toList(),
    );
  }
}
