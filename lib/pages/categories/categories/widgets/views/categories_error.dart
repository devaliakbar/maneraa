import 'package:flutter/material.dart';
import 'package:maneraa/widgets/normal_text.dart';

class CategoriesError extends StatelessWidget {
  final String errorMsg;
  CategoriesError(this.errorMsg);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Center(
        child: NormalText(
          errorMsg,
          color: Colors.red,
        ),
      ),
    );
  }
}
