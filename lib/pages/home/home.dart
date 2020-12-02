import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/widgets/build_categories.dart';
import 'package:maneraa/pages/home/widgets/build_header.dart';
import 'package:maneraa/pages/home/widgets/build_posters.dart';
import 'package:maneraa/pages/home/widgets/build_slider.dart';
import 'package:maneraa/utils/app_theme.dart';
import 'package:maneraa/utils/statusbar_color.dart';

class Home extends StatelessWidget with WidgetsBindingObserver {
  static const String myRoute = '/home';

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      setUpStatusbarColor(
          backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    setUpStatusbarColor(
        backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    WidgetsBinding.instance.addObserver(this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            buildHeader(),
            Expanded(
              child: ListView(
                children: [
                  BuildSlider(
                    [
                      "https://maneraa.com/public/uploads/sliders/qwRz7V2pkvAfiRbph24w7fv2VPc7cRlvTYvMZmE4.jpeg",
                      "https://maneraa.com/public/uploads/sliders/0vBhRWn1H1s6mJM2Wr1d3WMmmWpWdWzBM1dSPmfe.jpeg"
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  BuildCategories([
                    "https://maneraa.com/public/uploads/categories/icon/2AuKSSyEZ4S1KcPdI8zIFUEGz0wzhVBTpSx94onj.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/gSLHv9Dk731oTCfvsNB7gSUMaRgUJXnUEicWKOWS.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/9iK1GDsOjoK1vWrYvrA3OMWkSIYZKVcEgxaI0x3D.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/m1ErZw4Pssf3pL5vfZ23wxZHaH0apY0k2AxuZkXB.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/BmtR1Z543TqK9EiRxthgqZzhjbZORjOdmqr36juD.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/k0BgnzDDGHE94NoTXBxvvz8VctyaK6FywZmhs98W.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/2AuKSSyEZ4S1KcPdI8zIFUEGz0wzhVBTpSx94onj.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/gSLHv9Dk731oTCfvsNB7gSUMaRgUJXnUEicWKOWS.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/9iK1GDsOjoK1vWrYvrA3OMWkSIYZKVcEgxaI0x3D.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/m1ErZw4Pssf3pL5vfZ23wxZHaH0apY0k2AxuZkXB.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/BmtR1Z543TqK9EiRxthgqZzhjbZORjOdmqr36juD.jpeg",
                    "https://maneraa.com/public/uploads/categories/icon/k0BgnzDDGHE94NoTXBxvvz8VctyaK6FywZmhs98W.jpeg",
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  BuildPosters([
                    "https://maneraa.com/public/uploads/banners/seLP65TTlob63A8Zwjoe57tRvHqasjhdsg1LDr0s.jpeg",
                    "https://maneraa.com/public/uploads/banners/zhwkinHEUnIpEkktbbKdIdzw8EpW6DEF7Ha3B7W0.jpeg",
                    "https://maneraa.com/public/uploads/banners/Xpr0P8MnSJT9w5vOee7Nn2KyStOuLWzSUmJxNBlB.jpeg",
                    "https://maneraa.com/public/uploads/banners/NOkfeEXi3B4xaVbAiFHpKApGQjwUso5H28UmIgld.jpeg"
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
