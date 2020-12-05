import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:maneraa/pages/categories/bloc/data/categories_model.dart';
import 'package:maneraa/pages/categories/bloc/data/categories_repo.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepo _categoryRepo;

  CategoriesBloc(this._categoryRepo) : super(CategoriesLoadingState());

  @override
  Stream<CategoriesState> mapEventToState(
    CategoriesEvent event,
  ) async* {
    if (event is CategoriesLoadEvent) {
      yield CategoriesLoadingState();
      try {
        CategoriesModel categoriesModel = await _categoryRepo.getCategories();
        yield CategoriesLoadedState(categoriesModel: categoriesModel);
      } catch (e) {
        yield CategoriesLoadFailedState(errorMsg: e.toString());
      }
    }
  }
}
