import 'package:flutter/material.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/widgets/cart_icon.dart';

class BuildAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  BuildAppBar({this.appBar});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: AppTheme.primaryGreyColor),
      title: Image.asset(
        "assets/images/maneraa_logo.png",
        fit: BoxFit.scaleDown,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: AppTheme.primaryGreyColor,
            size: AppTheme.iconSizeM,
          ),
          onPressed: () {},
        ),
        CartIcon(
          cartCount: 0,
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
