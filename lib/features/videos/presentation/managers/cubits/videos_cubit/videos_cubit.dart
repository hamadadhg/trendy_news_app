/*
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/features/videos/data/repository/videos_repository_implementation.dart';
import 'package:trendy_news/features/videos/presentation/managers/cubits/videos_cubit/videos_state.dart';

class VideosCubit extends Cubit<VideosState> {
  VideosCubit({
    required this.videosRepositoryImplementation,
  }) : super(
          VideosInitialState(),
        );
  final VideosRepositoryImplementation videosRepositoryImplementation;
  String? getSearchVideoToRefreshTheView;
  Future<void> videosMethod({required String searchOnVideos}) async {
    getSearchVideoToRefreshTheView = searchOnVideos;
    emit(
      VideosLoadingState(),
    );
    var result = await videosRepositoryImplementation.fetchVideos(
      searchOnVideos: searchOnVideos,
    );
    result.fold(
      (failure) => emit(
        VideosFailureState(
          errorMessageInVideosState: failure.errorMessageInFailuresClass,
        ),
      ),
      (videos) => emit(
        VideosSuccessState(
          listInVideosState: videos,
        ),
      ),
    );
  }

  Future<void> refreshVideoView() async {
    await videosMethod(
      searchOnVideos: getSearchVideoToRefreshTheView!,
    );
//this method reuse videosMethod so if there are new data will get them, that's the refresh
  }
}
*/
