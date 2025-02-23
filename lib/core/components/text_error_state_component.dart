import 'package:flutter/material.dart';
import 'package:trendy_news/core/components/text_component_without_max_lines.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';

class TextErrorStateComponent extends StatelessWidget {
  const TextErrorStateComponent({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Center(
      child: TextComponentWithoutMaxLines(
        text: text,
        textStyle: StyleToTexts.textStyle22.copyWith(
          fontSize: height * 0.045,
          color: StyleToColors.redColor,
        ),
      ),
    );
  }
}
