/*
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/core/go_routers/go_routers.dart';
import 'package:trendy_news/core/managers/cubits/simple_bloc_observer/simple_bloc_observer.dart';
import 'package:trendy_news/core/managers/cubits/theme_data_cubit/theme_data_cubit.dart';
import 'package:trendy_news/core/service_locator/service_locator.dart';
import 'package:trendy_news/features/news/data/repository/news_repository_implementation.dart';
import 'package:trendy_news/features/news/presentation/managers/cubits/news_arabic_cubit/news_arabic_cubit.dart';
import 'package:trendy_news/features/news/presentation/managers/cubits/news_english_cubit/news_english_cubit.dart';
import 'package:trendy_news/features/videos/data/repository/videos_repository_implementation.dart';
import 'package:trendy_news/features/videos/presentation/managers/cubits/videos_cubit/videos_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
//widgetsFlu.. this method inside this widget ensure initial the flutter frameWork before running any code, this useful with(SystemChrom, SharedPreferences, Firebase, ..)
  SystemChrome.setEnabledSystemUIMode(
//grey statusBar in top emulator and navigationBar in bottom emulator that disturbing you, so this widget will hid them
    SystemUiMode.manual,
//i want to controll in statusBar, navigationBar,... manual controll to hide or show on my mind
    overlays: [],
//overlays:[] hide both(statusBar and navigationBar), example overlays: [SystemUiOverlay.top] so just i want to see statusBar and hide navigationBar
  );
//SystemChrome.setEnabledSystemUIMode use to full widget in view(if you have in the app widget to video, games,.. so you should use it to full and hide bars)
//SystemChrome.setSystemUIOverlaysStyle not to full and not hide bars, this method to edit on bars(like change color the statusBar from grey to transparent)
  serviceLocatorMethod(); //all app you can use service locator
  Bloc.observer = SimpleBlocObserver();
//to observe all thing in all cubit in the app
  runApp(
    DevicePreview(
//DevicePreview to test on your app on many devices and many different screen sizes
      enabled: false, //to make device_preview package active or no(false)
      devices: Devices.all, //to test on all devices
      builder: (context) {
//builder: to make all app interactive with DevicePreview
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => NewsEnglishCubit(
                newsRepositoryImplementation:
                    getIt.get<NewsRepositoryImplementation>(),
              ),
            ),
            BlocProvider(
              create: (context) => NewsArabicCubit(
                newsRepositoryImplementation:
                    getIt.get<NewsRepositoryImplementation>(),
              ),
            ),
            BlocProvider(
              create: (context) => VideosCubit(
                videosRepositoryImplementation:
                    getIt.get<VideosRepositoryImplementation>(),
              ),
            ),
            BlocProvider(
              create: (context) => ThemeDataCubit(),
            ),
          ],
          child: const TrendyNewsApp(),
        );
      },
    ),
  );
}

class TrendyNewsApp extends StatelessWidget {
  const TrendyNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeDataCubit, ThemeData>(
      builder: (context, theme) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: theme,
          routerConfig: GoRouters.router,
          locale: DevicePreview.locale(context),
//make the selected device follow your locale, the follow in language and region settings
          builder: DevicePreview.appBuilder,
//all widget in the app will build in different device, so you need to thing to ensure and exact determined size screen, pixel and..
        );
      },
    );
  }
}
*/
