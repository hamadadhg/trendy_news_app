import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  const IconButtonComponent({
    super.key,
    required this.onPressed,
    required this.iconData,
    required this.color,
    required this.percent,
  });
  final void Function()? onPressed;
  final IconData iconData;
  final Color color;
  final double percent;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: color,
        size: height * percent,
      ),
    );
  }
}
