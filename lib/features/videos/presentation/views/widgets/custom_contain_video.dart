import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/cached_network_image_component.dart';
import 'package:trendy_news/core/components/icon_button_component.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';

class CustomContainVideo extends StatelessWidget {
  const CustomContainVideo({
    super.key,
    required this.onPressed,
    required this.imageForVideo,
  });
  final void Function()? onPressed;
  final String imageForVideo;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              height * 0.017,
            ),
            child: CachedNetworkImageComponent(
              imageUrl: imageForVideo,
            ),
          ),
        ),
        Center(
          child: IconButtonComponent(
            onPressed: onPressed,
            color: StyleToColors.whiteColor,
            iconData: Icons.play_circle_fill,
            percent: 0.08,
          ),
        ),
      ],
    );
  }
}
