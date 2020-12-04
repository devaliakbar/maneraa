import 'package:flutter/material.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/widgets/normal_text.dart';

class CartIcon extends StatelessWidget {
  final int cartCount;
  CartIcon({this.cartCount = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: AppTheme.primaryGreyColor,
            size: AppTheme.iconSizeM,
          ),
          onPressed: () {},
        ),
        Positioned(
          right: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(11),
              ),
            ),
            height: 22,
            width: 22,
            child: Center(
              child: NormalText(
                cartCount.toString(),
                color: Colors.white,
                size: AppTheme.fontSizeS,
              ),
            ),
          ),
        )
      ],
    );
  }
}
