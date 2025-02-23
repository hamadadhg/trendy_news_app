import 'package:flutter/material.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_details_news_view_body.dart';

class DetailsNewsView extends StatelessWidget {
  const DetailsNewsView({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomDetailsNewsViewBody(
          newsModel: newsModel,
        ),
      ),
    );
  }
}
