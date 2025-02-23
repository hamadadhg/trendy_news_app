import 'package:flutter/material.dart';
import 'package:trendy_news/core/constant/constant_string_variables.dart';
import 'package:trendy_news/core/helpers/push_go_router_helper.dart';
import 'package:trendy_news/features/videos/presentation/managers/models/videos_model/videos_model.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_contain_video.dart';

class CustomVideo extends StatelessWidget {
  const CustomVideo({
    super.key,
    required this.videosModel,
  });
  final VideosModel videosModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.32,
      child: AspectRatio(
        aspectRatio: 3 / 2,
        child: CustomContainVideo(
          imageForVideo: videosModel.image,
          onPressed: () {
            pushGoRouterHelper(
              context: context,
              view: kDetailsVideosView,
              extra: videosModel,
            );
          },
        ),
      ),
    );
  }
}
