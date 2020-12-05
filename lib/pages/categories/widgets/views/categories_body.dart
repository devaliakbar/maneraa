import 'package:flutter/material.dart';
import 'package:maneraa/pages/categories/bloc/data/categories_model.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/widgets/image_from_network.dart';
import 'package:maneraa/widgets/normal_text.dart';

class CategoriesBody extends StatelessWidget {
  final List<Category> categories;
  CategoriesBody(this.categories);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (_, int index) => _buildCategory(index),
    );
  }

  Widget _buildCategory(int index) {
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
      ),
    );
  }
}
