/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/constant/constant_durations.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';

void snackBarHelper({required BuildContext context, required String text}) {
  var height = MediaQuery.of(context).size.height;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: k7Seconds,
      behavior: SnackBarBehavior.floating,
//make the snackBar float and no sticking in the screen(no full width)
      backgroundColor: StyleToColors.redColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          height * 0.02,
        ),
      ),
      content: Text(
        text,
        style: StyleToTexts.textStyle12.copyWith(
          fontSize: height * 0.025,
        ),
      ),
      action: SnackBarAction(
        label: 'OK',
        backgroundColor: StyleToColors.white30Color,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        }, //hide snackBar when click on OK
        textColor: StyleToColors.whiteColor,
      ),
    ),
  );
}
*/
