import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/text_component_with_max_lines.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';
import 'package:trendy_news/features/videos/presentation/managers/models/videos_model/videos_model.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_video.dart';

class CustomVideoAndTitle extends StatelessWidget {
  const CustomVideoAndTitle({
    super.key,
    required this.videosModel,
  });
  final VideosModel videosModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CustomVideo(
          videosModel: videosModel,
        ),
        SizedBox(
          height: height * 0.015,
        ),
        TextComponentWithMaxLines(
          text: videosModel.title,
          textStyle: StyleToTexts.textStyle20.copyWith(
            fontSize: height * 0.035,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
