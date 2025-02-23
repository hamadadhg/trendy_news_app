/*
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trendy_news/core/components/cached_network_image_component.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';

class CustomStackCategory extends StatelessWidget {
  const CustomStackCategory({
    super.key,
    required this.image,
    required this.centerTitle,
  });
  final String image;
  final String centerTitle;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned.fill(
//Positioned.fill to make the the image take correct height and aspectRatio(width) because Stack constraints the height and width image
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              height * 0.017,
            ),
            child: CachedNetworkImageComponent(
              imageUrl: image,
            ),
          ),
        ),
        Center(
          child: Shimmer.fromColors(
            baseColor: StyleToColors.whiteColor,
            highlightColor: StyleToColors.amberColor,
            child: Text(
              centerTitle,
              style: StyleToTexts.textStyle12.copyWith(
                fontSize: height * 0.022,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
*/
