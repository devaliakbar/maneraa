import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/utils/is_double_contain_decimal.dart';
import 'package:maneraa/widgets/loading_widget.dart';

class BuildShopByCategories extends StatelessWidget {
  final List<HomeShopByCategory> categories;

  BuildShopByCategories(this.categories);

  @override
  Widget build(BuildContext context) {
    const double margin = 8;

    double itemWidth = (MediaQuery.of(context).size.width - margin) / 3;
    double itemHeight = (itemWidth * 2) * 0.80;
    double totalRow = categories.length / 3;

    if (isDoubleContainDecimal(totalRow)) {
      totalRow += 1;
    }

    double containerHeight = totalRow.truncate() * itemHeight;

    return Container(
      margin: EdgeInsets.only(left: margin),
      height: containerHeight,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        childAspectRatio: (itemWidth / itemHeight),
        children: List.generate(
          categories.length,
          (index) {
            return Container(
              margin: EdgeInsets.only(right: margin, bottom: margin),
              child: CachedNetworkImage(
                fit: BoxFit.fitHeight,
                imageUrl: categories[index].image,
                placeholder: (context, url) => showLoading(),
                errorWidget: (context, url, error) => Icon(
                  Icons.error_outline,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
