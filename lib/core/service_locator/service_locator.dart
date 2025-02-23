import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:trendy_news/core/services/news_service.dart';
import 'package:trendy_news/core/services/videos_service.dart';
import 'package:trendy_news/features/news/data/repository/news_repository_implementation.dart';
import 'package:trendy_news/features/videos/data/repository/videos_repository_implementation.dart';

final getIt = GetIt.instance;

void serviceLocatorMethod() {
  getIt.registerSingleton<NewsRepositoryImplementation>(
    NewsRepositoryImplementation(
      apiServices: NewsService(
        dio: Dio(),
      ),
    ),
  );
  getIt.registerSingleton<VideosRepositoryImplementation>(
    VideosRepositoryImplementation(
      videosService: VideosService(
        dio: Dio(),
      ),
    ),
  );
}
