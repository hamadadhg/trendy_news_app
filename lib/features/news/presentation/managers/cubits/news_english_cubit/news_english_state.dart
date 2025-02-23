import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';

abstract class NewsEnglishState {}

class NewsEnglishInitialState extends NewsEnglishState {}

class NewsEnglishLoadingState extends NewsEnglishState {}

class NewsEnglishFailureState extends NewsEnglishState {
  final String errorMessageInEnglishNewsState;
  NewsEnglishFailureState({
    required this.errorMessageInEnglishNewsState,
  });
}

class NewsEnglishSuccessState extends NewsEnglishState {
  final List<NewsModel> listInNewsEnglishState;
  NewsEnglishSuccessState({
    required this.listInNewsEnglishState,
  });
}
