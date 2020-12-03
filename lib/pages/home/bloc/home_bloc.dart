import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/pages/home/bloc/data/home_repo.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepo homeRepo;

  HomeBloc(this.homeRepo) : super(HomeLoadingState());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is HomeLoadEvent) {
      yield HomeLoadingState();

      try {
        HomeData homeData = await homeRepo.getHomeData();
        yield HomeLoadedState(homeData: homeData);
      } catch (e) {
        yield HomeLoadFailed(errorMsg: e.toString());
      }
    }
  }
}
