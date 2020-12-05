part of 'categories_bloc.dart';

abstract class SubCategoriesState extends Equatable {
  const SubCategoriesState();

  @override
  List<Object> get props => [];
}

class SubCategoriesLoadingState extends SubCategoriesState {}

class SubCategoriesLoadedState extends SubCategoriesState {
  final SubCategoriesModel subCategoriesModel;
  SubCategoriesLoadedState({@required this.subCategoriesModel});

  @override
  List<Object> get props => [subCategoriesModel];
}

class SubCategoriesLoadFailedState extends SubCategoriesState {
  final String errorMsg;
  SubCategoriesLoadFailedState({@required this.errorMsg});

  @override
  List<Object> get props => [errorMsg];
}
