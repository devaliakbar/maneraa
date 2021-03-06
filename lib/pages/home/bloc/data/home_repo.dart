import 'package:maneraa/main.dart';
import 'package:maneraa/pages/home/bloc/data/home_model.dart';
import 'package:maneraa/services/network/make_http_request.dart';

class HomeRepo {
  Future<HomeModel> getHomeData() async {
    var response = await MakeHttpRequest.makeHttpRequest(
        path: MyApp.basicApiUrl + "banners/homedata");

    if (response == null) {
      throw MakeHttpRequest.ERROR_MSG;
    }

    if (response['errorMsg'] != null) {
      throw response['errorMsg'];
    }

    return HomeModel.fromJson(response['data']);
  }
}
