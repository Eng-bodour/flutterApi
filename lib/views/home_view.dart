// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutterapi/view_model/list_of_articles_view_model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ArticlesListViewModel(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('NewsApi'),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Center(
              child: Consumer<ArticlesListViewModel>(
            builder: (context, value, child) =>
                RaisedButton(onPressed: () async {
              await value.fetchArticles();
              // ignore: avoid_print
              print('${value.articlesList}');
            }),
          )),
        ));
  }
}
