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
  final String name;
  final String image;

  Category(
    this.name,
    this.image,
  );

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(json['name'], MyApp.webAppUrl + "public/" + json['icon']);
  }
}
