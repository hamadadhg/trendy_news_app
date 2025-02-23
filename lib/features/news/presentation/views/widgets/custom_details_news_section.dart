/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/cached_network_image_component.dart';
import 'package:trendy_news/core/components/text_component_without_max_lines.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';

class CustomDetailsNewsSection extends StatelessWidget {
  const CustomDetailsNewsSection({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.5,
          child: AspectRatio(
            aspectRatio: 3.2 / 3,
            child: CachedNetworkImageComponent(
              imageUrl: newsModel.image,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.018,
          ),
          child: TextComponentWithoutMaxLines(
            text: newsModel.title,
            textStyle: StyleToTexts.textStyle20.copyWith(
              fontSize: size.height * 0.04,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.018,
          ),
          child: TextComponentWithoutMaxLines(
            text: newsModel.description,
            textStyle: StyleToTexts.textStyle16.copyWith(
              fontSize: size.height * 0.023,
            ),
          ),
        ),
      ],
    );
  }
}
*/
