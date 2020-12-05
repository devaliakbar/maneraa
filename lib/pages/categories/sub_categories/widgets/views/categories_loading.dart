import 'package:flutter/material.dart';
import 'package:maneraa/widgets/custom_loading.dart';

class SubCategoriesLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Center(
        child: CustomLoading.showPageLoading(),
      ),
    );
  }
}
