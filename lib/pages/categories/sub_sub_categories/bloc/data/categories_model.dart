class SubSubCategoriesModel {
  final List<SubSubCategory> subSubCategories;

  SubSubCategoriesModel(this.subSubCategories);

  factory SubSubCategoriesModel.fromJson(Map<String, dynamic> mJson) {
    List<SubSubCategory> subSubCategoryList = new List<SubSubCategory>();
    mJson['data'].forEach((v) {
      subSubCategoryList.add(new SubSubCategory.fromJson(v));
    });

    return SubSubCategoriesModel(subSubCategoryList);
  }
}

class SubSubCategory {
  final String name;
  final String url;

  SubSubCategory(this.name, this.url);

  factory SubSubCategory.fromJson(Map<String, dynamic> mJson) {
    return SubSubCategory(mJson['name'], mJson['links']['products']);
  }
}
