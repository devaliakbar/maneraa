import 'package:maneraa/main.dart';
import 'package:maneraa/pages/categories/bloc/data/categories_model.dart';
import 'package:maneraa/services/network/make_http_request.dart';

class CategoriesRepo {
  Future<CategoriesModel> getCategories() async {
    var response = await MakeHttpRequest.makeHttpRequest(
        path: MyApp.basicApiUrl + "categories");

    if (response == null) {
      throw MakeHttpRequest.ERROR_MSG;
    }

    if (response['errorMsg'] != null) {
      throw response['errorMsg'];
    }

    return CategoriesModel.fromJson(response);
  }
}
