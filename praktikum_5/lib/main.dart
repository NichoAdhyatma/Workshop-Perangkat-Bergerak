import 'package:flutter/material.dart';
import 'package:praktikum_5/models/article.dart';
import 'package:praktikum_5/screens/detail_page.dart';
import 'package:praktikum_5/screens/list_page.dart';
import 'package:praktikum_5/screens/web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DefaultTabController(length: 3, child: NewsListPage()),
      routes: {
        NewsListPage.routeName: (context) => const NewsListPage(),
        ArticleDetailPage.routeName: (context) => const ArticleDetailPage(),
        ArticleWebView.routeName: (context) => ArticleWebView(
            url: ModalRoute.of(context)?.settings.arguments as String),
      },
    );
  }
}
