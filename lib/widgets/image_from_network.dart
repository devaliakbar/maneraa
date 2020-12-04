import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/widgets/custom_loading.dart';

class ImageFromNetwork extends StatelessWidget {
  final String imageUrl;
  ImageFromNetwork(this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => CustomLoading.showLoading(),
      errorWidget: (context, url, error) => Icon(
        Icons.error_outline,
        color: Colors.black,
      ),
    );
  }
}
