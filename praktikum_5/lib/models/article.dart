class Article {
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  Article({
    required this.author,
    required this.content,
    required this.title,
    required this.description,
    required this.publishedAt,
    required this.url,
    required this.urlToImage,
  });

  Article.fromJson(Map<String,dynamic> json) : 
      author = json["author"],
      title = json["title"],
      description = json["description"],
      url = json["url"],
      urlToImage = json["urlToImage"],
      publishedAt = json["publishedAt"],
      content = json["content"]
    ;
}
