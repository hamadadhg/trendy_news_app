import 'package:flutter/material.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';
import 'package:trendy_news/features/animation/presentation/views/widgets/custom_animation_widget.dart';
import 'package:trendy_news/features/animation/presentation/views/widgets/custom_news_image.dart';

class CustomAnimationSection extends StatelessWidget {
  const CustomAnimationSection({
    super.key,
    required this.animationController,
    required this.fadeAnimation,
    required this.scaleAnimation,
  });
  final AnimationController animationController;
  final Animation<double> fadeAnimation;
  final Animation<double> scaleAnimation;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return CustomAnimationWidget(
      animationController: animationController,
      fadeAnimation: fadeAnimation,
      scaleAnimation: scaleAnimation,
      child: Column(
        children: [
          const CustomNewsImage(),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            'News World',
            style: StyleToTexts.textStyle40.copyWith(
              fontSize: height * 0.08,
            ),
          ),
        ],
      ),
    );
  }
}
