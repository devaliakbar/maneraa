import 'package:flutter/material.dart';
import 'package:maneraa/pages/categories/sub_categories/bloc/data/categories_model.dart';
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
        itemBuilder: (_, int index) => _buildSubCategory(index),
      ),
    );
  }

  Widget _buildSubCategory(int index) {
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
      ),
    );
  }
}
