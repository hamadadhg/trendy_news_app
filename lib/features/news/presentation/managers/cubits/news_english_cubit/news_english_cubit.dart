import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/features/news/data/repository/news_repository_implementation.dart';
import 'package:trendy_news/features/news/presentation/managers/cubits/news_english_cubit/news_english_state.dart';

class NewsEnglishCubit extends Cubit<NewsEnglishState> {
  NewsEnglishCubit({
    required this.newsRepositoryImplementation,
  }) : super(
          NewsEnglishInitialState(),
        );
  final NewsRepositoryImplementation newsRepositoryImplementation;
  String? getSearchEnglishNewsToRefreshTheView;
  Future<void> newsEnglishMethod({required String newsCategory}) async {
    getSearchEnglishNewsToRefreshTheView = newsCategory;
    emit(
      NewsEnglishLoadingState(),
    );
    var result = await newsRepositoryImplementation.fetchEnglishNews(
      category: newsCategory,
    );
    result.fold(
      (failure) => emit(
        NewsEnglishFailureState(
          errorMessageInEnglishNewsState: failure.errorMessageInFailuresClass,
        ),
      ),
      (news) => emit(
        NewsEnglishSuccessState(
          listInNewsEnglishState: news,
        ),
      ),
    );
  }

  Future<void> refreshEnglishView() async {
    await newsEnglishMethod(
      newsCategory: getSearchEnglishNewsToRefreshTheView!,
    );
  }
}
