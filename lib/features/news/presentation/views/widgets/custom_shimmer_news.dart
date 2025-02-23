import 'package:flutter/material.dart';
import 'package:trendy_news/features/news/presentation/views/widgets/custom_contain_shimmer_news.dart';

class CustomShimmerNews extends StatelessWidget {
  const CustomShimmerNews({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: (height / (height * 0.28 + height * 0.01)).floor(),
        itemBuilder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.01,
            ),
            child: const CustomContainShimmerNews(),
          );
        },
      ),
    );
  }
}
