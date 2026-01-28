class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;
  final String source;
  final String publishedAt;

  NewsArticle({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.source,
    required this.publishedAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? 'No Title',
      description: json['description'] ?? 'No Description',
      urlToImage: json['urlToImage'] ?? '',
      source: json['source']['name'] ?? 'Unknown Source',
      publishedAt: json['publishedAt'] ?? '',
    );
  }
}