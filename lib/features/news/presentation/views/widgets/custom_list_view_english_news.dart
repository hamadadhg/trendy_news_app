/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_shimmer_news.dart';
import 'package:trendy_news/core/components/text_error_state_component.dart';
import 'package:trendy_news/core/constant/constant_string_variables.dart';
import 'package:trendy_news/core/helpers/push_go_router_helper.dart';
import 'package:trendy_news/features/news/presentation/managers/cubits/news_english_cubit/news_english_cubit.dart';
import 'package:trendy_news/features/news/presentation/managers/cubits/news_english_cubit/news_english_state.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_news.dart';

class CustomListViewEnglishNews extends StatelessWidget {
  const CustomListViewEnglishNews({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<NewsEnglishCubit, NewsEnglishState>(
      builder: (context, state) {
        if (state is NewsEnglishSuccessState) {
          return Expanded(
            child: RefreshIndicator(
//RefreshIndicator to make user to do pull the view to down, and appear the refresh icon
              onRefresh: () =>
                  context.read<NewsEnglishCubit>().refreshEnglishView(),
//onRefresh you should assign to it method contain on data(cubit method contain on data)
//i create refreshEnglishNewsView because NewsEnglishMethod need to String variable(search)
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.listInNewsEnglishState.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.01,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        pushGoRouterHelper(
                          context: context,
                          view: kDetailsViewRouter,
                          extra: state.listInNewsEnglishState[index],
                        );
                      },
                      child: CustomNews(
                        newsModel: state.listInNewsEnglishState[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is NewsEnglishFailureState) {
          return TextErrorStateComponent(
            text: state.errorMessageInEnglishNewsState,
          );
        } else {
          return const CustomShimmerNews();
        }
      },
    );
  }
}
*/
