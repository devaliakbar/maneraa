import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/widgets/image_from_network.dart';

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
          width: 90, child: ImageFromNetwork(categories[index].image)),
    );
  }
}
