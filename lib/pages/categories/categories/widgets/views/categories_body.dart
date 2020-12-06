import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maneraa/pages/categories/categories/bloc/data/categories_model.dart';
import 'package:maneraa/pages/categories/sub_categories/categories.dart';
import 'package:maneraa/pages/products/products.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/widgets/image_from_network.dart';
import 'package:maneraa/widgets/normal_text.dart';

class CategoriesBody extends StatelessWidget {
  final List<Category> categories;
  CategoriesBody(this.categories);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildCategory(context, index),
      ),
    );
  }

  Widget _buildCategory(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 7.5),
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        title: NormalText(categories[index].name),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: AppTheme.iconSizeXS,
        ),
        leading: ImageFromNetwork(categories[index].image),
        onTap: () {
          String route = Products.myRoute;

          if (categories[index].action == Category.ACTION_SUB) {
            route = SubCategories.myRoute;
          }

          Map<String, String> arguments = {
            "name": categories[index].name,
            "url": categories[index].url,
          };

          Navigator.pushNamed(context, route,
              arguments: json.encode(arguments));
        },
      ),
    );
  }
}
