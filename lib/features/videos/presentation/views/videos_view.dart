import 'package:flutter/material.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_videos_view_body.dart';

class VideosView extends StatelessWidget {
  const VideosView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomVideosViewBody(),
      ),
    );
  }
}
