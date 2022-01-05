import 'dart:convert';

import 'package:flutterapi/model/article_inside.dart';
import 'package:flutterapi/model/article_outside.dart';
import 'package:http/http.dart' as http;

//this class for fetch data from API
class NewsApi {
  final String apiKey = 'fd02523d3e024e148a25658445cc2ab9';

  Future<List<ArticleInside>> fetchArticles() async {
    late List<ArticleInside> articleList = [];
    try {
      final http.Response responce = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey'));
      if (responce.statusCode == 200) {
        //data from json in url => save as String
        String data = responce.body;
        //to convert data to jsonData as map
        var jsonData = jsonDecode(data);
        ArticlesOutSide articles = ArticlesOutSide.fromJson(jsonData);
        articleList =
            articles.articles!.map((e) => ArticleInside.fromJson(e)).toList();
      } else {
        // ignore: avoid_print
        print('responceCode:  ${responce.statusCode}');
      }
    } catch (ex) {
      // ignore: avoid_print
      print(ex);
    }
    return articleList;
  }

  Future<List<ArticleInside>> fetchArticlesByCategory(String category) async {
    late List<ArticleInside> articleList = [];
    try {
      final http.Response responce = await http.get(Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=$apiKey'));
      if (responce.statusCode == 200) {
        //data from json in url => save as String
        String data = responce.body;
        //to convert data to jsonData as map
        var jsonData = jsonDecode(data);
        ArticlesOutSide articles = ArticlesOutSide.fromJson(jsonData);
        articleList =
            articles.articles!.map((e) => ArticleInside.fromJson(e)).toList();
      } else {
        // ignore: avoid_print
        print('responceCode:  ${responce.statusCode}');
      }
    } catch (ex) {
      // ignore: avoid_print
      print(ex);
    }
    return articleList;
  }
}
