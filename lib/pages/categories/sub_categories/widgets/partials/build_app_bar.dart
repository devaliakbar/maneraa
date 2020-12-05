import 'package:flutter/material.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/widgets/cart_icon.dart';
import 'package:maneraa/widgets/normal_text.dart';

class BuildSubCategoriesAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final AppBar appBar;
  final String title;
  BuildSubCategoriesAppBar({@required this.appBar, @required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: AppTheme.primaryGreyColor),
      centerTitle: false,
      titleSpacing: 0.0,
      title: NormalText(title),
      actions: [
        CartIcon(
          cartCount: 0,
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
