import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maneraa/pages/categories/sub_categories/bloc/data/categories_model.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/categories.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/widgets/normal_text.dart';

class SubCategoriesBody extends StatelessWidget {
  final List<SubCategory> subCategories;
  SubCategoriesBody(this.subCategories);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: ListView.builder(
        itemCount: subCategories.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildSubCategory(context, index),
      ),
    );
  }

  Widget _buildSubCategory(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 7.5),
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        title: NormalText(subCategories[index].name),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: AppTheme.iconSizeXS,
        ),
        onTap: () {
          String route;

          if (subCategories[index].action == SubCategory.ACTION_SUB) {
            route = SubSubCategories.myRoute;

            Map<String, String> arguments = {
              "name": subCategories[index].name,
              "data": subCategories[index].data,
            };

            Navigator.pushNamed(context, SubSubCategories.myRoute,
                arguments: json.encode(arguments));
          }
        },
      ),
    );
  }
}
