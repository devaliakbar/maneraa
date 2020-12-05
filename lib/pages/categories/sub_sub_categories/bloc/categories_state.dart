part of 'categories_bloc.dart';

abstract class SubSubCategoriesState extends Equatable {
  const SubSubCategoriesState();

  @override
  List<Object> get props => [];
}

class SubSubCategoriesLoadingState extends SubSubCategoriesState {}

class SubSubCategoriesLoadedState extends SubSubCategoriesState {
  final SubSubCategoriesModel subSubCategoriesModel;
  SubSubCategoriesLoadedState({@required this.subSubCategoriesModel});

  @override
  List<Object> get props => [subSubCategoriesModel];
}

class SubSubCategoriesLoadFailedState extends SubSubCategoriesState {
  final String errorMsg;
  SubSubCategoriesLoadFailedState({@required this.errorMsg});

  @override
  List<Object> get props => [errorMsg];
}
