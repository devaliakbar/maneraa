import 'dart:convert';

import 'package:maneraa/pages/categories/sub_sub_categories/bloc/data/categories_model.dart';

class SubSubCategoriesRepo {
  SubSubCategoriesModel getSubSubCategoriesFromJson(String data) {
    var response = json.decode(data);
    return SubSubCategoriesModel.fromJson(response);
  }
}
