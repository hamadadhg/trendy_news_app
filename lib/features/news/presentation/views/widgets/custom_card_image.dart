/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/cached_network_image_component.dart';

class CustomCardImage extends StatelessWidget {
  const CustomCardImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.28,
      child: AspectRatio(
        aspectRatio: 4 / 2,
        child: Card(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              height * 0.017,
            ),
            child: CachedNetworkImageComponent(
              imageUrl: imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
*/
