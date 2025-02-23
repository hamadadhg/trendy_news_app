import 'package:flutter/material.dart';

OutlineInputBorder outlineInputBorderHelper(
    {required BuildContext context, required Color borderColor}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      MediaQuery.of(context).size.height * 0.017,
    ),
    borderSide: BorderSide(
      color: borderColor,
    ),
  );
}
