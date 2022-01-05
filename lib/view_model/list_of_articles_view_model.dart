import 'package:flutter/cupertino.dart';
import 'package:flutterapi/model/article_inside.dart';
import 'package:flutterapi/services/news_service.dart';

class ArticlesListViewModel extends ChangeNotifier {
  List<ArticleInside> _articlesList = [];
  List<ArticleInside> _articlesListByCategory = [];

  Future<void> fetchArticles() async {
    _articlesList = await NewsApi().fetchArticles();
    notifyListeners();
  }

  Future<void> fetchArticlesByCategory(String category) async {
    _articlesListByCategory = await NewsApi().fetchArticlesByCategory(category);
    notifyListeners();
  }

  List<ArticleInside> get articlesList => _articlesList;
  List<ArticleInside> get articlesListByCategory => _articlesListByCategory;
}
