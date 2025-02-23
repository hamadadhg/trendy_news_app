import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/app_bar_component.dart';
import 'package:trendy_news/features/news/presentation/managers/models/news_model/news_model.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_details_news_section.dart';

class CustomDetailsNewsViewBody extends StatelessWidget {
  const CustomDetailsNewsViewBody({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          const AppBarComponent(),
          SizedBox(
            height: height * 0.02,
          ),
          CustomDetailsNewsSection(
            newsModel: newsModel,
          ),
        ],
      ),
    );
  }
}
