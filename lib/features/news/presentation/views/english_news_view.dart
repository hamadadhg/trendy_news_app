import 'package:flutter/material.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_english_news_view_body.dart';

class EnglishNewsView extends StatelessWidget {
  const EnglishNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomEnglishNewsViewBody(),
      ),
    );
  }
}
