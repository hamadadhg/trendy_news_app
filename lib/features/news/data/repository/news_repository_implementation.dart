import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:trendy_news/core/errors/failures.dart';
import 'package:trendy_news/core/services/news_service.dart';
import 'package:trendy_news/features/news/data/repository/news_repository.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';

class NewsRepositoryImplementation implements NewsRepository {
  final NewsService apiServices;
  NewsRepositoryImplementation({
    required this.apiServices,
  });
  @override
  Future<Either<Failures, List<NewsModel>>> fetchArabicNews(
      {required String category}) async {
    try {
      List<NewsModel> arabicNews = await apiServices.newsGetMethod(
        endPoint: '&category=$category&language=ar&country=eg,sa,ae',
      );
      return right(
        arabicNews,
      );
    } on DioException catch (e) {
      return left(
        NewsServerFailure.fromDioException(
          dioException: e,
        ),
      );
    } on Exception catch (e) {
      return left(
        NewsServerFailure(
          errorMessageInFailuresClass: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failures, List<NewsModel>>> fetchEnglishNews(
      {required String category}) async {
    try {
      List<NewsModel> englishNews = await apiServices.newsGetMethod(
        endPoint: '&category=$category&language=en&country=ca,in',
      );
      return right(
        englishNews,
      );
    } on DioException catch (e) {
      return left(
        NewsServerFailure.fromDioException(
          dioException: e,
        ),
      );
    } on Exception catch (e) {
      return left(
        NewsServerFailure(
          errorMessageInFailuresClass: e.toString(),
        ),
      );
    }
  }
}
