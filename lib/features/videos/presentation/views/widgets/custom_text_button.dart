/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Transform.translate(
      offset: Offset(
        size.width * 0.32,
        0,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          'Visit The Channel',
          style: StyleToTexts.textStyle20.copyWith(
            fontSize: size.height * 0.02,
          ),
        ),
      ),
    );
  }
}
*/
