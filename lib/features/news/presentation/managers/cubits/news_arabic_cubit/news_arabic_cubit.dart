/*
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/features/news/data/repository/news_repository_implementation.dart';
import 'package:trendy_news/features/news/presentation/managers/cubits/news_arabic_cubit/news_arabic_state.dart';

class NewsArabicCubit extends Cubit<NewsArabicState> {
  NewsArabicCubit({
    required this.newsRepositoryImplementation,
  }) : super(
          NewsArabicInitialState(),
        );
  final NewsRepositoryImplementation newsRepositoryImplementation;
  String? getSearchArabicNewsToRefreshTheView;
  Future<void> newsArabicMethod({required String newsCategory}) async {
    getSearchArabicNewsToRefreshTheView = newsCategory;
    emit(
      NewsArabicLoadingState(),
    );
    var result = await newsRepositoryImplementation.fetchArabicNews(
      category: newsCategory,
    );
    result.fold(
      (failure) => emit(
        NewsArabicFailureState(
          errorMessageInArabicNewsState: failure.errorMessageInFailuresClass,
        ),
      ),
      (news) => emit(
        NewsArabicSuccessState(
          listInNewsArabicState: news,
        ),
      ),
    );
  }

  Future<void> refreshArabicNew() async {
    await newsArabicMethod(
      newsCategory: getSearchArabicNewsToRefreshTheView!,
    );
  }
}
*/
