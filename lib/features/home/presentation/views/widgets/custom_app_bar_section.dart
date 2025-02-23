import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/app_bar_icon_mode_component.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_two_texts.dart';

class CustomAppBarSection extends StatelessWidget {
  const CustomAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarIconModeComponent(),
        CustomTwoTexts(),
      ],
    );
  }
}
