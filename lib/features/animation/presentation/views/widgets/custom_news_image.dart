import 'package:flutter/material.dart';
import 'package:trendy_news/core/assets/images/asset_images.dart';

class CustomNewsImage extends StatelessWidget {
  const CustomNewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.5 / 2,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              AssetImages.newsImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
