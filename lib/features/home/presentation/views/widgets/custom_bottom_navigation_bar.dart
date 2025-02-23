/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex; //this attribute will make the icon is active
  final Function(int) onTap; //this method work when i click on icon from bar
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        size.width * 0.03,
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        showSelectedLabels: true,
        selectedItemColor: StyleToColors.purpleColor,
        unselectedItemColor: StyleToColors.greyColor,
        selectedLabelStyle: StyleToTexts.textStyle20.copyWith(
          fontSize: size.height * 0.02,
        ),
        unselectedLabelStyle: StyleToTexts.textStyle20.copyWith(
          fontSize: size.height * 0.02,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article,
              size: size.height * 0.035,
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ondemand_video,
              size: size.height * 0.035,
            ),
            label: 'Videos',
          ),
        ],
      ),
    );
  }
}
*/
