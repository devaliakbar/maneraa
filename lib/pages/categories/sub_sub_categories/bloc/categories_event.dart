part of 'categories_bloc.dart';

abstract class SubSubCategoriesEvent extends Equatable {
  const SubSubCategoriesEvent();

  @override
  List<Object> get props => [];
}

class SubSubCategoriesLoadEvent extends SubSubCategoriesEvent {
  final String data;
  SubSubCategoriesLoadEvent(this.data);

  @override
  List<Object> get props => [data];
}
