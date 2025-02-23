/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/core/helpers/outline_input_border_helper.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';
import 'package:trendy_news/core/styles/style_to_texts.dart';
import 'package:trendy_news/features/videos/presentation/managers/cubits/videos_cubit/videos_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.025,
      ),
      child: TextField(
        onChanged: (value) {
          BlocProvider.of<VideosCubit>(context).videosMethod(
            searchOnVideos: value,
          );
        },
        style: StyleToTexts.textStyle16.copyWith(
          color: StyleToColors.boldBlackColor,
          fontSize: size.height * 0.0235,
        ),
        decoration: InputDecoration(
          enabledBorder: outlineInputBorderHelper(
            context: context,
            borderColor: StyleToColors.blueColor,
          ),
          focusedBorder: outlineInputBorderHelper(
            context: context,
            borderColor: StyleToColors.neonBlueColor,
          ),
          labelText: 'Search On Videos..',
          labelStyle: StyleToTexts.textStyle13.copyWith(
            fontSize: size.height * 0.017,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          suffixIcon: Icon(
            Icons.search,
            size: size.height * 0.035,
          ),
        ),
      ),
    );
  }
}
*/
