import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:maneraa/pages/categories/sub_categories/bloc/data/categories_model.dart';
import 'package:maneraa/pages/categories/sub_categories/bloc/data/categories_repo.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class SubCategoriesBloc extends Bloc<SubCategoriesEvent, SubCategoriesState> {
  final SubCategoriesRepo _subCategoryRepo;

  SubCategoriesBloc(this._subCategoryRepo) : super(SubCategoriesLoadingState());

  @override
  Stream<SubCategoriesState> mapEventToState(
    SubCategoriesEvent event,
  ) async* {
    if (event is SubCategoriesLoadEvent) {
      yield SubCategoriesLoadingState();
      try {
        SubCategoriesModel subCategoriesModel =
            await _subCategoryRepo.getSubCategories(event.apiUrl);
        yield SubCategoriesLoadedState(subCategoriesModel: subCategoriesModel);
      } catch (e) {
        yield SubCategoriesLoadFailedState(errorMsg: e.toString());
      }
    }
  }
}
