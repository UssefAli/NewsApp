import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewService {
  final Dio dio;

  NewService(this.dio);

  Future<List<Article>> getNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apikey=589abfdf1db548fea045930215e3e376&category=$category');
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];

      List<Article> articlesModel = [];
      for (var element in articles) {
        articlesModel.add(Article.fromJson(element));
      }
      return articlesModel;
    } catch (e) {
      return [];
    }
  }
}
