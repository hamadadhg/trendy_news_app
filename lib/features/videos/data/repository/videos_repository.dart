import 'package:dartz/dartz.dart';
import 'package:trendy_news/core/errors/failures.dart';
import 'package:trendy_news/features/videos/presentation/managers/models/videos_model/videos_model.dart';

abstract class VideosRepository {
  Future<Either<Failures, List<VideosModel>>> fetchVideos(
      {required String searchOnVideos});
}
