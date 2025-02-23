import 'package:dio/dio.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';

class NewsService {
  final String apiKey = 'pub_69621de5a02392705e7c9f465a13a86efb998';
  final String baseUrl = 'https://newsdata.io/api/1/latest?apikey=';
  final Dio dio;
  NewsService({
    required this.dio,
  });
  Future<List<NewsModel>> newsGetMethod({required String endPoint}) async {
    Response response = await dio.get(
      '$baseUrl$apiKey$endPoint',
    );
    List<dynamic> dataIWantItFromResponse = response.data['results'];
    List<NewsModel> newsList = [];
    for (var element in dataIWantItFromResponse) {
      newsList.add(
        NewsModel.fromJson(
          json: element,
        ),
      );
    }
    return newsList;
  }
}
