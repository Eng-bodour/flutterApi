class ArticlesOutSide {
  // we have type data is dynamic because no show any erro ,because return data she maps not ArticleInside
  //late final List<ArticleInside> articles;
  late List<dynamic>? articles;

  ArticlesOutSide({required this.articles});

  factory ArticlesOutSide.fromJson(Map<String, dynamic> jsonData) {
    return ArticlesOutSide(articles: jsonData['articles']);
  }
}
