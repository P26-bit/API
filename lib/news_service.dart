import 'dart:convert';
import 'package:http/http.dart' as http;
import 'news_article.dart';

class NewsService {
  final String apiKey = '4d4aeedd70ee4b97b41e71c4c25138fe';
  final String url = 'https://newsapi.org/v2/top-headlines?country=us';

  Future<List<NewsArticle>> fetchNews() async {
    final response = await http.get(Uri.parse('$url&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List articles = data['articles'];
      return articles.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}