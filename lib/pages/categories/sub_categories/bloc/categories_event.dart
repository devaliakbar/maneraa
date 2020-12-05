part of 'categories_bloc.dart';

abstract class SubCategoriesEvent extends Equatable {
  const SubCategoriesEvent();

  @override
  List<Object> get props => [];
}

class SubCategoriesLoadEvent extends SubCategoriesEvent {}
