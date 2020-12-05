import 'dart:convert';

class SubCategoriesModel {
  final List<SubCategory> subCategories;

  SubCategoriesModel(this.subCategories);

  factory SubCategoriesModel.fromJson(Map<String, dynamic> mJson) {
    List<SubCategory> subCategoryList = new List<SubCategory>();
    mJson['data'].forEach((v) {
      subCategoryList.add(new SubCategory.fromJson(v));
    });

    return SubCategoriesModel(subCategoryList);
  }
}

class SubCategory {
  static const String ACTION_PRODUCT = "prod";
  static const String ACTION_SUB = "sub";

  final String name;
  final String action;
  final String url;

  SubCategory(this.name, this.action, this.url);

  factory SubCategory.fromJson(Map<String, dynamic> mJson) {
    String mAction;
    String data;

    List<dynamic> subsubCatArr = mJson['subSubCategories']['data'];

    if (subsubCatArr.length > 0) {
      mAction = ACTION_SUB;
      data = json.encode({"data": subsubCatArr});
    } else {
      mAction = ACTION_PRODUCT;
      data = mJson['links']['products'];
    }

    return SubCategory(mJson['name'], mAction, data);
  }
}
