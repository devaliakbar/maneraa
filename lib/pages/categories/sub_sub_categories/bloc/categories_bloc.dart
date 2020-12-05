import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/bloc/data/categories_model.dart';
import 'package:maneraa/pages/categories/sub_sub_categories/bloc/data/categories_repo.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class SubSubCategoriesBloc
    extends Bloc<SubSubCategoriesEvent, SubSubCategoriesState> {
  final SubSubCategoriesRepo _subSubCategoryRepo;

  SubSubCategoriesBloc(this._subSubCategoryRepo)
      : super(SubSubCategoriesLoadingState());

  @override
  Stream<SubSubCategoriesState> mapEventToState(
    SubSubCategoriesEvent event,
  ) async* {
    if (event is SubSubCategoriesLoadEvent) {
      try {
        SubSubCategoriesModel subSubCategoriesModel =
            _subSubCategoryRepo.getSubSubCategoriesFromJson(event.data);
        yield SubSubCategoriesLoadedState(
            subSubCategoriesModel: subSubCategoriesModel);
      } catch (e) {
        yield SubSubCategoriesLoadFailedState(errorMsg: e.toString());
      }
    }
  }
}
