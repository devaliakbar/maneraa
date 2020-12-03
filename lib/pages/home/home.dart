import 'package:flutter/material.dart';
import 'package:maneraa/pages/home/widgets/build_best_moments.dart';
import 'package:maneraa/pages/home/widgets/build_best_selling.dart';
import 'package:maneraa/pages/home/widgets/build_categories.dart';
import 'package:maneraa/pages/home/widgets/build_header.dart';
import 'package:maneraa/pages/home/widgets/build_posters.dart';
import 'package:maneraa/pages/home/widgets/build_shop_by_categories.dart';
import 'package:maneraa/pages/home/widgets/build_slider.dart';
import 'package:maneraa/pages/home/widgets/home_title.dart';
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
            BuildHeader(),
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
                  HomeTitle("Best Selling"),
                  SizedBox(
                    height: 15,
                  ),
                  BuildBestSeller(
                    [
                      "https://maneraa.com/public/uploads/banners/zyRrNOr3bMTTDhVTDtCDnA2cjuhRlwdKl0Fee16j.jpeg",
                      "https://maneraa.com/public/uploads/banners/jXMNruijtuE44hracWY9lqg6obseAxs49EuQpdNj.jpeg",
                      "https://maneraa.com/public/uploads/banners/Qm9dXMRnWxNyjFAObOedfjUgZ8GhEq8LWDypUvfp.jpeg",
                      "https://maneraa.com/public/uploads/banners/5vBzC8ihizPvSv1BiBM4IAgKd9VenJpwNjdsUaqL.jpeg"
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  HomeTitle("Shop By Category"),
                  SizedBox(
                    height: 15,
                  ),
                  BuildShopByCategories([
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                    "https://maneraa.com/public/uploads/banners/AxuE30g4PWKGVEEo2UD1Vh2QQG4zh1hMSeJP71RB.jpeg",
                  ]),
                  SizedBox(
                    height: 7,
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
                  HomeTitle("Best Moments"),
                  SizedBox(
                    height: 15,
                  ),
                  BuildBestMoments(
                    [
                      "https://maneraa.com/public/uploads/banners/oEllOJKMOBzZZZurK3YMTbvGKnPGtUdszJhIVxXs.jpeg",
                      "https://maneraa.com/public/uploads/banners/u84Ad7FkoEQj7gXiL2JPz0NerG8SzlJ5aBfMzQIw.jpeg",
                      "https://maneraa.com/public/uploads/banners/ri0ihy2UEjXCWX09nZRsePzKYuZGNktoJEWR8kWJ.jpeg",
                    ],
                  ),
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