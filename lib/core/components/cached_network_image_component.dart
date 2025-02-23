/*
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trendy_news/core/errors/custom_icon_error.dart';
import 'package:trendy_news/features/home/presentation/views/widgets/custom_shimmer_loading_image.dart';

class CachedNetworkImageComponent extends StatelessWidget {
  const CachedNetworkImageComponent({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => const CustomIconError(),
      placeholder: (context, url) => const CustomShimmerLoadingImage(),
      fit: BoxFit.fill,
    );
  }
}
*/
