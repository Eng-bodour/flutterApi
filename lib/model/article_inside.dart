class ArticleInside {
  String? title;
  String? description;
  String? url;
  String? urlImage;

  ArticleInside(
      {required this.title,
      required this.description,
      required this.url,
      required this.urlImage});

  factory ArticleInside.fromJson(Map<String, dynamic> jsonData) {
    return ArticleInside(
        title: jsonData['title'],
        description: jsonData['description'],
        url: jsonData['url'],
        urlImage: jsonData['urlToImage']);
  }
}
