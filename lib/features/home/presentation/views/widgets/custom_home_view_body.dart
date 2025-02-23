/*
import 'package:flutter/material.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_app_bar_section.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_tab_bar_section.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.04,
      ),
      child: DefaultTabController(
//DefaultTabController to manage the tab and navigation(move in tabs)
        length: 2, //i want to section in the view
        child: Column(
          children: [
            const CustomAppBarSection(),
            SizedBox(
              height: size.height * 0.01,
            ),
            const CustomTabBarSection(),
          ],
        ),
      ),
    );
  }
}
*/
