import 'package:flutter/material.dart';
import 'package:maneraa/widgets/normal_text.dart';

class HomeError extends StatelessWidget {
  final String errorMsg;
  HomeError(this.errorMsg);
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
