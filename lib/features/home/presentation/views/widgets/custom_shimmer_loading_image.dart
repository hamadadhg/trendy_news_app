/*
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';

class CustomShimmerLoadingImage extends StatelessWidget {
  const CustomShimmerLoadingImage({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Shimmer.fromColors(
      baseColor: StyleToColors.grey700Color,
      highlightColor: StyleToColors.grey300Color,
      child: SizedBox(
        height: height * 0.15,
        child: AspectRatio(
          aspectRatio: 1.3 / 2,
          child: Container(
            decoration: BoxDecoration(
              color: StyleToColors.whiteColor,
              borderRadius: BorderRadius.circular(
                height * 0.017,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/
