part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoadingState extends HomeState {
  @override
  List<Object> get props => [];
}

class HomeLoadedState extends HomeState {
  final HomeData homeData;
  HomeLoadedState({this.homeData});

  @override
  List<Object> get props => [homeData];
}

class HomeLoadFailed extends HomeState {
  final String errorMsg;
  HomeLoadFailed({this.errorMsg});

  @override
  List<Object> get props => [errorMsg];
}
