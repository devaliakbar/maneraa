import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/widgets/build_header.dart';
import 'package:maneraa/utils/app_theme.dart';
import 'package:maneraa/utils/statusbar_color.dart';
import 'package:maneraa/widgets/normal_text.dart';

class Home extends StatelessWidget {
  static const String myRoute = '/home';

  @override
  Widget build(BuildContext context) {
    setUpStatusbarColor(
        backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildHeader(),
            Expanded(
              child: Container(
                color: AppTheme.primaryGreyColor,
                child: Center(
                  child: createNormalText('All is well', color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
