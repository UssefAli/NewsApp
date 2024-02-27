class Article {
  final String? image;
  final String? title;
  final String? subTitle;

  Article({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  factory Article.fromJson(json) {
    return Article(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description']);
  }
}
