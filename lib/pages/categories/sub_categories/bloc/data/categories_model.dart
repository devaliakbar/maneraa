class SubCategoriesModel {
  final List<SubCategory> subCategories;

  SubCategoriesModel(this.subCategories);

  factory SubCategoriesModel.fromJson(Map<String, dynamic> json) {
    List<SubCategory> subCategoryList = new List<SubCategory>();
    json['data'].forEach((v) {
      subCategoryList.add(new SubCategory.fromJson(v));
    });

    return SubCategoriesModel(subCategoryList);
  }
}

class SubCategory {
  final String name;

  SubCategory(
    this.name,
  );

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      json['name'],
    );
  }
}
