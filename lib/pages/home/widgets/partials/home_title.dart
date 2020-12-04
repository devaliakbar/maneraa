import 'package:flutter/material.dart';
import 'package:maneraa/utils/app_theme.dart';
import 'package:maneraa/widgets/normal_text.dart';

class HomeTitle extends StatelessWidget {
  final String title;

  HomeTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: NormalText(title, size: AppTheme.fontSizeL, boldText: true),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 2.5,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 2.5,
                  color: AppTheme.secondaryGreyColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
