import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/widgets/loading_widget.dart';

class BuildPosters extends StatelessWidget {
  final List<HomePoster> posters;
  BuildPosters(this.posters);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: posters.map((poster) => _buildPoster(poster)).toList(),
    );
  }

  Widget _buildPoster(HomePoster poster) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: CachedNetworkImage(
        imageUrl: poster.image,
        placeholder: (context, url) => showLoading(),
        errorWidget: (context, url, error) => Icon(
          Icons.error_outline,
          color: Colors.black,
        ),
      ),
    );
  }
}
