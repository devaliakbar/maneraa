import 'package:maneraa/main.dart';

class HomeModel {
  static const String ACTION_PRODUCT = "prod";
  static const String ACTION_SUB = "sub";
  static const String ACTION_SUB_SUB = "sub_sub";

  final List<HomeBanner> banners;
  final List<HomeCategory> categories;
  final List<HomeBestSelling> bestSellings;
  final List<HomeShopByCategory> shopByCategories;
  final List<HomePoster> posters;
  final List<HomeBestMoments> bestMoments;

  HomeModel(this.banners, this.categories, this.bestSellings,
      this.shopByCategories, this.posters, this.bestMoments);

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    List<HomeBanner> bannersList = new List<HomeBanner>();
    json['banner'].forEach((v) {
      bannersList.add(new HomeBanner.fromJson(v));
    });

    List<HomeCategory> categoryList = new List<HomeCategory>();
    json['categories_circle'].forEach((v) {
      categoryList.add(new HomeCategory.fromJson(v));
    });

    List<HomeBestSelling> bestSellingsList = new List<HomeBestSelling>();
    json['best_selling'].forEach((v) {
      bestSellingsList.add(new HomeBestSelling.fromJson(v));
    });

    List<HomeShopByCategory> shopByCategoryList =
        new List<HomeShopByCategory>();
    json['shop_by_categories'].forEach((v) {
      shopByCategoryList.add(new HomeShopByCategory.fromJson(v));
    });

    List<HomePoster> posterList = new List<HomePoster>();
    json['posters'].forEach((v) {
      posterList.add(new HomePoster.fromJson(v));
    });

    List<HomeBestMoments> bestMomentList = new List<HomeBestMoments>();
    json['best_moments'].forEach((v) {
      bestMomentList.add(new HomeBestMoments.fromJson(v));
    });

    return HomeModel(bannersList, categoryList, bestSellingsList,
        shopByCategoryList, posterList, bestMomentList);
  }
}

class HomeBanner {
  final String image;
  final String url;

  HomeBanner(this.image, this.url);

  factory HomeBanner.fromJson(Map<String, dynamic> json) {
    return HomeBanner(
        MyApp.webAppUrl + "public/" + json['photo'], json['link']);
  }
}

class HomeCategory {
  final String name;
  final String image;
  final String url;

  HomeCategory(this.name, this.image, this.url);

  factory HomeCategory.fromJson(Map<String, dynamic> json) {
    String subCatUrl =
        MyApp.basicApiUrl + "sub-categories/" + json['id'].toString();

    return HomeCategory(
        json['name'], MyApp.webAppUrl + "public/" + json['icon'], subCatUrl);
  }
}

class HomeBestSelling {
  final String image;
  final String url;

  HomeBestSelling(this.image, this.url);

  factory HomeBestSelling.fromJson(Map<String, dynamic> json) {
    return HomeBestSelling(
        MyApp.webAppUrl + "public/" + json['photo'], json['url']);
  }
}

class HomeShopByCategory {
  final String image;
  final String url;

  HomeShopByCategory(this.image, this.url);

  factory HomeShopByCategory.fromJson(Map<String, dynamic> json) {
    return HomeShopByCategory(
        MyApp.webAppUrl + "public/" + json['photo'], json['url']);
  }
}

class HomePoster {
  final String image;
  final String url;

  HomePoster(this.image, this.url);

  factory HomePoster.fromJson(Map<String, dynamic> json) {
    return HomePoster(MyApp.webAppUrl + "public/" + json['photo'], json['url']);
  }
}

class HomeBestMoments {
  final String image;
  final String url;

  HomeBestMoments(this.image, this.url);

  factory HomeBestMoments.fromJson(Map<String, dynamic> json) {
    return HomeBestMoments(
        MyApp.webAppUrl + "public/" + json['photo'], json['url']);
  }
}
