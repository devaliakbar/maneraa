import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maneraa/pages/categories/categories/bloc/categories_bloc.dart';
import 'package:maneraa/pages/categories/categories/widgets/partials/build_app_bar.dart';
import 'package:maneraa/pages/categories/categories/widgets/views/categories_body.dart';
import 'package:maneraa/pages/categories/categories/widgets/views/categories_error.dart';
import 'package:maneraa/pages/categories/categories/widgets/views/categories_loading.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/services/settings/status_bar_color.dart';

class Categories extends StatelessWidget with WidgetsBindingObserver {
  static const String myRoute = '/categories';

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      StatusBarColor.setUpStatusbarColor(
          backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoriesBloc>(context).add(CategoriesLoadEvent());

    WidgetsBinding.instance.addObserver(this);

    return Scaffold(
      appBar: BuildCategoriesAppBar(
        appBar: AppBar(),
      ),
      body: SafeArea(
        child: BlocConsumer<CategoriesBloc, CategoriesState>(
          listener: (context, state) {
            print("Home State Changed");
          },
          builder: (context, state) {
            if (state is CategoriesLoadFailedState) {
              return CategoriesError(state.errorMsg);
            } else if (state is CategoriesLoadedState) {
              return CategoriesBody(state.categoriesModel.categories);
            }
            return CategoriesLoading();
          },
        ),
      ),
    );
  }
}
