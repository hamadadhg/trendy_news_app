import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:trendy_news/core/errors/failures.dart';
import 'package:trendy_news/core/services/videos_service.dart';
import 'package:trendy_news/features/videos/data/repository/videos_repository.dart';
import 'package:trendy_news/features/videos/presentation/managers/models/videos_model/videos_model.dart';

class VideosRepositoryImplementation implements VideosRepository {
  final VideosService videosService;
  VideosRepositoryImplementation({
    required this.videosService,
  });
  @override
  Future<Either<Failures, List<VideosModel>>> fetchVideos(
      {required String searchOnVideos}) async {
    try {
      List<VideosModel> videos = await videosService.videosGetMethod(
        searchOnVideos: searchOnVideos,
      );
      return right(
        videos,
      );
    } on DioException catch (e) {
      return left(
        VideosServerFailure.fromDioException(
          dioException: e,
        ),
      );
    } on Exception catch (e) {
      return left(
        VideosServerFailure(
          errorMessageInFailuresClass: e.toString(),
        ),
      );
    }
  }
}
