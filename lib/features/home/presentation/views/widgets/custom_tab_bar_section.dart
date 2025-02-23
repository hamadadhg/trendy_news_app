/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_grid_view_arabic_category.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_grid_view_english_category.dart';

class CustomTabBarSection extends StatelessWidget {
  const CustomTabBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        children: [
          TabBar(
            //TabBar to build the all tab(text, divider,color,padding,..)
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.013, //padding on divider
            ),
            labelColor:
                StyleToColors.deepPurpleAccentColor, //color to active tab
            unselectedLabelColor:
                StyleToColors.greyColor, //color to inactive tab
            indicatorColor: StyleToColors.blueColor, //color to underline
            tabs: [
              //tabs to put many Tab Widget, Tab Widget to put what do you want text, icon,...
              Tab(
                child: Text(
                  'English',
                  style: StyleToTexts.textStyle20.copyWith(
                    fontSize: size.height * 0.025,
                  ),
                  overflow: TextOverflow.visible, //to ensure see all text
                ),
              ),
              Tab(
                child: Text(
                  'العربية',
                  style: StyleToTexts.textStyle20.copyWith(
                    fontSize: size.height * 0.025,
                  ),
                  overflow: TextOverflow.visible, //to ensure see all text
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          const Expanded(
            //sure Expanded to enable the tab take what does it can take width in Column
            child: TabBarView(
              //TabBarView to build widget in this Tab(first widget to first tab..)
              children: [
                CustomGridViewEnglishCategory(),
                CustomGridViewArabicCategory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/
