import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/widgets/loading_widget.dart';

class BuildCategories extends StatelessWidget {
  final List categories;

  BuildCategories(this.categories);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildCategoryItem(context, index),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 90,
        child: CachedNetworkImage(
          imageUrl: categories[index],
          placeholder: (context, url) => showLoading(),
          errorWidget: (context, url, error) => Icon(
            Icons.error_outline,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
