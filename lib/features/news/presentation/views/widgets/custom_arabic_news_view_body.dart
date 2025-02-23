import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/app_bar_component.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_list_view_arabic_news.dart';

class CustomArabicNewsViewBody extends StatelessWidget {
  const CustomArabicNewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      child: const Column(
        children: [
          AppBarComponent(),
          CustomListViewArabicNews(),
        ],
      ),
    );
  }
}
