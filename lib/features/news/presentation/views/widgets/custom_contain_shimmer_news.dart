import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trendy_news/core/components/text_shimmer_component.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';

class CustomContainShimmerNews extends StatelessWidget {
  const CustomContainShimmerNews({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Shimmer.fromColors(
      baseColor: StyleToColors.grey700Color,
      highlightColor: StyleToColors.grey300Color,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.28,
            child: AspectRatio(
              aspectRatio: 4 / 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    height * 0.017,
                  ),
                  color: StyleToColors.whiteColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const TextShimmerComponent(),
          SizedBox(
            height: height * 0.01,
          ),
          const TextShimmerComponent(),
        ],
      ),
    );
  }
}
