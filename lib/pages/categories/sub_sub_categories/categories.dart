import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/bloc/categories_bloc.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/widgets/partials/build_app_bar.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/widgets/views/categories_body.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/widgets/views/categories_error.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/widgets/views/categories_loading.dart';
import 'package:maneraa/services/settings/app_theme.dart';
import 'package:maneraa/services/settings/status_bar_color.dart';

class SubSubCategories extends StatelessWidget with WidgetsBindingObserver {
  static const String myRoute = '/sub_sub_categories';

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      StatusBarColor.setUpStatusbarColor(
          backgroundColor: AppTheme.secondaryGreyColor, whiteColor: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    String passedArgs = ModalRoute.of(context).settings.arguments;

    Map passedArgument = json.decode(passedArgs);

    BlocProvider.of<SubSubCategoriesBloc>(context).add(
      SubSubCategoriesLoadEvent(passedArgument['data']),
    );

    WidgetsBinding.instance.addObserver(this);

    return Scaffold(
      appBar: BuildSubSubCategoriesAppBar(
        appBar: AppBar(),
        title: passedArgument['name'],
      ),
      body: SafeArea(
        child: BlocConsumer<SubSubCategoriesBloc, SubSubCategoriesState>(
          listener: (context, state) {
            print("Home State Changed");
          },
          builder: (context, state) {
            if (state is SubSubCategoriesLoadFailedState) {
              return SubSubCategoriesError(state.errorMsg);
            } else if (state is SubSubCategoriesLoadedState) {
              return SubSubCategoriesBody(
                  state.subSubCategoriesModel.subSubCategories);
            }
            return SubSubCategoriesLoading();
          },
        ),
      ),
    );
  }
}
