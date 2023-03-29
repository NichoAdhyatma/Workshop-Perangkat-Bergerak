import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:praktikum_5/models/article.dart';
import 'package:praktikum_5/photo_hero.dart';
import 'package:praktikum_5/screens/detail_page.dart';

class NewsListPage extends StatelessWidget {
  static const routeName = 'article-list';
  const NewsListPage({super.key});

  List<Article> parseArticles(String? json) {
    if (json == null) {
      return [];
    }
    final List parsed = jsonDecode(json);
    return parsed.map((json) => Article.fromJson(json)).toList();
  }

  Widget _buildArticlesItem(BuildContext context, Article article) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      leading: PhotoHero(
        photo: article.urlToImage,
        onTap: () {
          Navigator.pushNamed(context, ArticleDetailPage.routeName,
              arguments: article);
        },
        width: 100,
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
      onTap: () {
        Navigator.pushNamed(context, ArticleDetailPage.routeName,
            arguments: article);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return _buildArticlesItem(context, articles[index]);
            },
          );
        },
      ),
    );
  }
}
