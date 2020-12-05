part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

class CategoriesLoadingState extends CategoriesState {}

class CategoriesLoadedState extends CategoriesState {
  final CategoriesModel categoriesModel;
  CategoriesLoadedState({@required this.categoriesModel});

  @override
  List<Object> get props => [categoriesModel];
}

class CategoriesLoadFailedState extends CategoriesState {
  final String errorMsg;
  CategoriesLoadFailedState({@required this.errorMsg});

  @override
  List<Object> get props => [errorMsg];
}
