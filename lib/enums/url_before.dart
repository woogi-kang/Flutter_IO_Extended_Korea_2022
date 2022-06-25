const String baseUrl = "https://www.naver.com";

enum Urls {
  login,
  category,
  product,
  delete,
}

extension ApiUrlExt on Urls {
  String get endpoint {
    switch(this) {
      case Urls.login:
        return '$baseUrl/login';
      case Urls.category:
        return '$baseUrl/category';
      case Urls.product:
        return '$baseUrl/product';
      case Urls.delete:
        return '$baseUrl/delete';
    }
  }
}