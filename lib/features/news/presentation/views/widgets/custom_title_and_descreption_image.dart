/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/text_component_with_max_lines.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';

class CustomTitleAndDescreptionImage extends StatelessWidget {
  const CustomTitleAndDescreptionImage({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        TextComponentWithMaxLines(
          text: newsModel.title,
          textStyle: StyleToTexts.textStyle20.copyWith(
            fontSize: height * 0.04,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        TextComponentWithMaxLines(
          text: newsModel.description,
          textStyle: StyleToTexts.textStyle16.copyWith(
            fontSize: height * 0.023,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
*/
