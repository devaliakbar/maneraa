import 'package:maneraa/pages/categories/sub_categories/bloc/data/categories_model.dart';
import 'package:maneraa/services/network/make_http_request.dart';

class SubCategoriesRepo {
  Future<SubCategoriesModel> getSubCategories(String apiUrl) async {
    var response = await MakeHttpRequest.makeHttpRequest(path: apiUrl);

    if (response == null) {
      throw MakeHttpRequest.ERROR_MSG;
    }

    if (response['errorMsg'] != null) {
      throw response['errorMsg'];
    }

    return SubCategoriesModel.fromJson(response);
  }
}
