import 'package:flutter/material.dart';
import 'package:maneraa/utils/app_theme.dart';

Widget buildHeader() {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        IconButton(
            icon: Icon(
              Icons.menu,
              color: AppTheme.primaryGreyColor,
              size: AppTheme.iconSizeM,
            ),
            onPressed: () {}),
        Image.asset("assets/images/maneraa_logo.png"),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: AppTheme.primaryGreyColor,
                    size: AppTheme.iconSizeM,
                  ),
                  onPressed: () {}),
              SizedBox(
                width: 10,
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: AppTheme.primaryGreyColor,
                    size: AppTheme.iconSizeM,
                  ),
                  onPressed: () {})
            ],
          ),
        )
      ],
    ),
  );
}
