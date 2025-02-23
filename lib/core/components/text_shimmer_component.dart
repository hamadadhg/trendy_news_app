import 'package:flutter/material.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';

class TextShimmerComponent extends StatelessWidget {
  const TextShimmerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.025,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            height * 0.01,
          ),
          color: StyleToColors.whiteColor,
        ),
      ),
    );
  }
}
