import 'package:maneraa/main.dart';
import 'package:maneraa/pages/categories/sub_categories/bloc/data/categories_model.dart';
import 'package:maneraa/services/network/make_http_request.dart';

class SubCategoriesRepo {
  Future<SubCategoriesModel> getSubCategories() async {
    var response = await MakeHttpRequest.makeHttpRequest(
        path: MyApp.basicApiUrl + "categories");

    if (response == null) {
      throw MakeHttpRequest.ERROR_MSG;
    }

    if (response['errorMsg'] != null) {
      throw response['errorMsg'];
    }

    return SubCategoriesModel.fromJson(response);
  }
}
