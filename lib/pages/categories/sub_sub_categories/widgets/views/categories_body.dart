import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/bloc/data/categories_model.dart';
import 'package:maneraa/pages/products/products.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/widgets/normal_text.dart';

class SubSubCategoriesBody extends StatelessWidget {
  final List<SubSubCategory> subSubCategories;
  SubSubCategoriesBody(this.subSubCategories);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: ListView.builder(
        itemCount: subSubCategories.length,
        itemBuilder: (BuildContext context, int index) =>
            _buildSubSubCategory(context, index),
      ),
    );
  }

  Widget _buildSubSubCategory(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 7.5),
      margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        title: NormalText(subSubCategories[index].name),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: AppTheme.iconSizeXS,
        ),
        onTap: () {
          Map<String, String> arguments = {
            "name": subSubCategories[index].name,
            "data": subSubCategories[index].url,
          };
          Navigator.pushNamed(context, Products.myRoute,
              arguments: json.encode(arguments));
        },
      ),
    );
  }
}
