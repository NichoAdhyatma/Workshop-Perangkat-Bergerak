import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:praktikum_5/models/article.dart';
import 'package:praktikum_5/screens/detail_page.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ArticleDetailPage.routeName,
            arguments: [article, "${article.urlToImage}-hero"]);
      },
      child: Hero(
        tag: "${article.urlToImage}-hero",
        child: Container(
        
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: NetworkImage(article.urlToImage),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 0.0,
              sigmaY: 0.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.25),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                  
                      child: Text(
                        article.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
