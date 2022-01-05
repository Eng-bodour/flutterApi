import 'package:flutter/material.dart';
import 'package:flutterapi/services/news_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsApi'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            NewsApi newsApi = NewsApi();
            var articles = await newsApi.fetchArticlesByCategory('general');
            for (var article in articles) {
              // ignore: avoid_print
              print(article.title);
            }
          },
          child: const Text('fetchData'),
        ),
      ),
    );
  }
}
