import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:praktikum_5/models/article.dart';
import 'package:praktikum_5/photo_hero.dart';
import 'package:praktikum_5/screens/detail_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:praktikum_5/widgets/hero_card.dart';

class NewsListPage extends StatefulWidget {
  static const routeName = 'article-list';
  const NewsListPage({super.key});

  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  int activeIndex = 0;
  int currentIdex = 0;
  List<Article> parseArticles(String? json) {
    if (json == null) {
      return [];
    }
    final List parsed = jsonDecode(json);
    return parsed.map((json) => Article.fromJson(json)).toList();
  }

  CarouselController buttonCarouselController = CarouselController();

  Widget _buildArticlesItem(BuildContext context, Article article) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      leading: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: PhotoHero(
          photo: article.urlToImage,
          tag: article.urlToImage,
          onTap: () {
            Navigator.pushNamed(context, ArticleDetailPage.routeName,
                arguments: [article, (article.urlToImage)]);
          },
          width: 100,
        ),
      ),
      title: Text(
        article.title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(article.author),
      onTap: () {
        Navigator.pushNamed(context, ArticleDetailPage.routeName,
            arguments: [article, (article.urlToImage)]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        bottom: const TabBar(
          unselectedLabelColor: Colors.black,
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3.0,
          tabs: [
            Tab(
              text: "News",
            ),
            Tab(
              text: "Sport",
            ),
            Tab(
              text: "Tech",
            ),
          ],
        ),
      ),
      body: FutureBuilder<String>(
        future:
            DefaultAssetBundle.of(context).loadString('assets/articles.json'),
        builder: (context, snapshot) {
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider.builder(

                  carouselController: buttonCarouselController,
                  itemCount: articles.length,
                  itemBuilder: (context, index, realIndex) {
                    Article article;
                    if (articles.isNotEmpty) {
                      article = articles[index];

                      return HeroCard(article: article);
                    }
                    return const CircularProgressIndicator();
                  },
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    autoPlay: true,
                    enlargeFactor: 0.3,
                    autoPlayInterval: const Duration(seconds: 5),
                    enlargeCenterPage: true,
                    aspectRatio: 1.8,
                    
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          buttonCarouselController.animateToPage(index);
                          activeIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 16.0),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: activeIndex == index
                              ? Colors.grey[700]
                              : Colors.grey[500],
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  },
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticlesItem(context, articles[index]);
                },
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                currentIdex = value;
              });
            },
            currentIndex: currentIdex,
            items: const [
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.newspaper,
                ),
              ),
              BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.person,
                ),
              ),
            ]),
      ),
    );
  }
}
