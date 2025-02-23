import 'package:flutter/material.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';

class CustomTwoTexts extends StatelessWidget {
  const CustomTwoTexts({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Column(
          children: [
            Text(
              'Category',
              style: StyleToTexts.textStyle22.copyWith(
                fontSize: height * 0.045,
              ),
            ),
            Transform.translate(
              offset: const Offset(
                -3,
                0,
              ),
              child: Text(
                'News and Podcast',
                style: StyleToTexts.textStyle14.copyWith(
                  fontSize: height * 0.02,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
