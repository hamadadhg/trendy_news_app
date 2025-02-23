/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';

class ThemeDataCubit extends Cubit<ThemeData> {
  ThemeDataCubit()
      : super(
          ThemeData.light().copyWith(
            scaffoldBackgroundColor: StyleToColors.whiteColor.withAlpha(
              225, //like opacity to white color
            ),
          ),
        );
  void toggleTheme() {
    emit(
      state.brightness == Brightness.light
          ? ThemeData.dark()
          : ThemeData.light().copyWith(
              scaffoldBackgroundColor: StyleToColors.whiteColor.withAlpha(
                225, //like opacity to white color
              ),
            ),
    );
  }
}
*/
