import 'package:flutter/material.dart';

class CustomAnimationWidget extends StatelessWidget {
  const CustomAnimationWidget({
    super.key,
    required this.animationController,
    required this.fadeAnimation,
    required this.scaleAnimation,
    required this.child,
  });
  final AnimationController animationController;
  final Animation<double> fadeAnimation;
  final Animation<double> scaleAnimation;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return ScaleTransition(
          scale: scaleAnimation,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: child,
          ),
        );
      },
    );
  }
}
