/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_news/core/managers/cubits/theme_data_cubit/theme_data_cubit.dart';
import 'package:trendy_news/core/styles/style_to_colors.dart';

class IconButtonThemeDataComponent extends StatelessWidget {
  const IconButtonThemeDataComponent({
    super.key,
    required this.percent,
  });
  final double percent;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocBuilder<ThemeDataCubit, ThemeData>(
      builder: (context, theme) {
        return IconButton(
          onPressed: () {
            context.read<ThemeDataCubit>().toggleTheme();
//1: use .watch() inside builder: because .watch() for rebuild all time if the state in cubit change
//2: use .read() inside onPressed: because .read() for rebuild to once time and all time just listen to change cubit state, but no rebuild for onPressed Method all time
          },
          icon: Icon(
            theme.brightness == Brightness.light
                ? Icons.light_mode
                : Icons.dark_mode,
            color: theme.brightness == Brightness.light
                ? StyleToColors.neonYellowColor
                : StyleToColors.whiteColor,
            size: height * percent,
          ),
        );
      },
    );
  }
}
*/
