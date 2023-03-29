import 'package:flutter/material.dart';
import 'package:praktikum_5/models/article.dart';
import 'package:praktikum_5/photo_hero.dart';
import 'package:praktikum_5/screens/web_view.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = "/article-detail";

  const ArticleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var arguments = ModalRoute.of(context)?.settings.arguments as List<Object>;

    Article article = arguments[0] as Article;
    String tag = arguments[1] as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            PhotoHero(
              onTap: () {
                Navigator.of(context).pop();
              },
              tag: tag,
              photo: article.urlToImage,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(article.description),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    article.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text('Date : ${article.publishedAt}'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Author: ${article.author}'),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Text(
                    article.content,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ArticleWebView.routeName,
                          arguments: article.url);
                    },
                    child: const Text("Read more"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
