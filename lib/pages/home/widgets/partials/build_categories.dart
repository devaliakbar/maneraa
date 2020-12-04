import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/widgets/custom_loading.dart';

class BuildCategories extends StatelessWidget {
  final List<HomeCategory> categories;

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
          imageUrl: categories[index].image,
          placeholder: (context, url) => CustomLoading.showLoading(),
          errorWidget: (context, url, error) => Icon(
            Icons.error_outline,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
