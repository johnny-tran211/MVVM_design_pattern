class NewsArticle {
  final String title;
  final String authod;
  final String description;
  final String urlToImage;
  final String url;
  final String publishedAt;
  final String content;

  NewsArticle(
      {this.title,
      this.authod,
      this.description,
      this.urlToImage,
      this.url,
      this.publishedAt,
      this.content});

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      authod: json['authod'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      url: json['url'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}
