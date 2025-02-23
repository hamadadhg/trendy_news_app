/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/core/classes/news_list.dart';
import 'package:trendy_news/core/constant/constant_string_variables.dart';
import 'package:trendy_news/core/helpers/push_go_router_helper.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_category.dart';
import 'package:trendy_news/features/news/presentation/managers/cubits/news_english_cubit/news_english_cubit.dart';

class CustomGridViewEnglishCategory extends StatelessWidget {
  const CustomGridViewEnglishCategory({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: size.height * 0.032,
        crossAxisSpacing: size.width * 0.027,
      ),
      itemCount: NewsList.newsCategories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.read<NewsEnglishCubit>().newsEnglishMethod(
                  newsCategory: NewsList.newsCategories[index]['title']!,
                );
            pushGoRouterHelper(
              context: context,
              view: kEnglishNewsViewRouter,
            );
          },
          child: CustomCategory(
            centerTitle: NewsList.newsCategories[index]['title']!,
            image: NewsList.newsCategories[index]['image']!,
          ),
        );
        //categories[index] because this List and i want to give me value this key(['like title'])
      },
    );
  }
}
*/
