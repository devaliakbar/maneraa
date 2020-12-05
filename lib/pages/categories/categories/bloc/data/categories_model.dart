import 'package:maneraa/main.dart';

class CategoriesModel {
  final List<Category> categories;

  CategoriesModel(this.categories);

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    List<Category> categoryList = new List<Category>();
    json['data'].forEach((v) {
      categoryList.add(new Category.fromJson(v));
    });

    return CategoriesModel(categoryList);
  }
}

class Category {
  static const String ACTION_PRODUCT = "prod";
  static const String ACTION_SUB = "sub";

  final String name;
  final String image;
  final String action;
  final String url;

  Category(this.name, this.image, this.action, this.url);

  factory Category.fromJson(Map<String, dynamic> json) {
    String mAction;
    String mUrl;

    if (json['links'].containsKey("sub_categories")) {
      mAction = ACTION_SUB;
      mUrl = json['links']['sub_categories'];
    } else {
      mAction = ACTION_PRODUCT;
      mUrl = json['links']['products'];
    }

    return Category(json['name'], MyApp.webAppUrl + "public/" + json['icon'],
        mAction, mUrl);
  }
}
