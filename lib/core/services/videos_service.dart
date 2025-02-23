/*
import 'package:dio/dio.dart';
import 'package:trendy_news/features/videos/presentation/managers/models/videos_model/videos_model.dart';

class VideosService {
  final String apiKey = 'AIzaSyA1bwYpXGZGKkbLlRBvJ0Paaa6b9jalWn4';
  final String baseUrl =
      'https://www.googleapis.com/youtube/v3/search?part=snippet';
  final Dio dio;
  VideosService({
    required this.dio,
  });
  Future<List<VideosModel>> videosGetMethod(
      {required String searchOnVideos}) async {
    Response response = await dio.get(
      '$baseUrl&q=$searchOnVideos&type=video&key=$apiKey',
    );
    List<dynamic> dataIWantItFromResponse = response.data['items'];
    List<VideosModel> videosList = [];
    for (var element in dataIWantItFromResponse) {
      videosList.add(
        VideosModel.fromJson(
          json: element,
        ),
      );
    }
    return videosList;
  }
}
*/
