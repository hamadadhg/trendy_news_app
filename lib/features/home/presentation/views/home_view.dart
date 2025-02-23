/*
import 'package:flutter/material.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_home_view_body.dart';
import 'package:trendy_news/features/videos/presentation/views/widgets/custom_videos_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int indexFromSelectedIconBar = 0;
//this variable give index you click on it(from icon)
  List<Widget> viewsToNavigateFromBottomNavigationBar = [
    const CustomHomeViewBody(), //this view consider news
    const CustomVideosViewBody(), //this view consider videos
  ];
  void tappedOnIconInBottomNavigationBarMethod(int index) {
    setState(
      () {
        indexFromSelectedIconBar = index;
      },
//this method will rebuild(update) your click on icon
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: viewsToNavigateFromBottomNavigationBar[indexFromSelectedIconBar],
//1: this list return a widget, 2:index determined view you should to navigate it
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: indexFromSelectedIconBar,
        onTap: tappedOnIconInBottomNavigationBarMethod,
      ),
    );
//you give indexFromSelectedIconBar(icon you click on it) to currentIndex because currentIndex will make this icon(you click on it) is active
//onTap attribute in BottomNavigationBar work when you click on icon from bar, so i want the tappedOnIconInBottomNavigationBarMethod work when i click so assign it to onTap attribute
  }
}
*/
