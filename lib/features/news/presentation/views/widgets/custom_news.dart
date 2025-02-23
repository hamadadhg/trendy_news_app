/*
import 'package:flutter/material.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_card_image.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_title_and_descreption_image.dart';

class CustomNews extends StatelessWidget {
  const CustomNews({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        CustomCardImage(
          imageUrl: newsModel.image,
        ),
        SizedBox(
          height: height * 0.01,
        ),
        CustomTitleAndDescreptionImage(
          newsModel: newsModel,
        ),
      ],
    );
  }
}
*/
