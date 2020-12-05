import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maneraa/pages/categories/sub_categories/bloc/categories_bloc.dart';
import 'package:maneraa/pages/categories/sub_categories/widgets/partials/build_app_bar.dart';
import 'package:maneraa/pages/categories/sub_categories/widgets/views/categories_body.dart';
import 'package:maneraa/pages/categories/sub_categories/widgets/views/categories_error.dart';
import 'package:maneraa/pages/categories/sub_categories/widgets/views/categories_loading.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/services/settings/status_bar_color.dart';

class SubCategories extends StatelessWidget with WidgetsBindingObserver {
  static const String myRoute = '/sub_categories';

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      StatusBarColor.setUpStatusbarColor(
          backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SubCategoriesBloc>(context).add(SubCategoriesLoadEvent());

    WidgetsBinding.instance.addObserver(this);

    return Scaffold(
      appBar: BuildSubCategoriesAppBar(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: BlocConsumer<SubCategoriesBloc, SubCategoriesState>(
          listener: (context, state) {
            print("Home State Changed");
          },
          builder: (context, state) {
            if (state is SubCategoriesLoadFailedState) {
              return SubCategoriesError(state.errorMsg);
            } else if (state is SubCategoriesLoadedState) {
              return SubCategoriesBody(state.subCategoriesModel.subCategories);
            }
            return SubCategoriesLoading();
          },
        ),
      ),
    );
  }
}
