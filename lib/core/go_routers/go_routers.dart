import 'package:go_router/go_router.dart';
import 'package:trendy_news/core/constant/constant_string_variables.dart';
import 'package:trendy_news/features/animation/presentation/views/animation_view.dart';
import 'package:trendy_news/features/home/presentation/views/home_view.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';
import 'package:trendy_news/features/news/presentation/views/arabic_news_view.dart';
import 'package:trendy_news/features/news/presentation/views/details_news_view.dart';
import 'package:trendy_news/features/news/presentation/views/english_news_view.dart';
import 'package:trendy_news/features/videos/presentation/managers/models/videos_model/videos_model.dart';
import 'package:trendy_news/features/videos/presentation/views/details_videos_view.dart';

abstract class GoRouters {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kAnimationViewRouter,
        builder: (context, state) => const AnimationView(),
      ),
      GoRoute(
        path: kHomeViewRouter,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kEnglishNewsViewRouter,
        builder: (context, state) => const EnglishNewsView(),
      ),
      GoRoute(
        path: kArabicNewsViewRouter,
        builder: (context, state) => const ArabicNewsView(),
      ),
      GoRoute(
        path: kDetailsViewRouter,
        builder: (context, state) => DetailsNewsView(
          newsModel: state.extra as NewsModel,
        ),
      ),
      GoRoute(
        path: kDetailsVideosView,
        builder: (context, state) => DetailsVideosView(
          videosModel: state.extra as VideosModel,
        ),
      ),
    ],
  );
}
