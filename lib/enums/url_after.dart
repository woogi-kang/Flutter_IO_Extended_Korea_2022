const String baseUrl = "https://www.naver.com/";

enum Urls {
  login('/login'),
  category('/category'),
  item('/item'),
  delete('/delete');

  final String url;

  const Urls(this.url);

  String get endpoint => '$baseUrl$url';
}