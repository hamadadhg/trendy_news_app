import 'package:flutter/material.dart';

class TextComponentWithMaxLines extends StatelessWidget {
  const TextComponentWithMaxLines({
    super.key,
    required this.text,
    required this.textStyle,
    this.maxLines = 1,
    this.overflow,
  });
  final String text;
  final TextStyle textStyle;
  final int maxLines;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: maxLines,
      overflow: overflow,
      style: textStyle,
    );
  }
}
