/*
import 'package:flutter/material.dart';
import 'package:trendy_news/core/constant/constant_durations.dart';
import 'package:trendy_news/core/constant/constant_string_variables.dart';
import 'package:trendy_news/core/helpers/go_go_router_helper.dart';
import 'package:trendy_news/features/animation/presentation/views/widgets/custom_animation_section.dart';

class CustomAnimationViewBody extends StatefulWidget {
  const CustomAnimationViewBody({super.key});

  @override
  State<CustomAnimationViewBody> createState() =>
      _CustomAnimationViewBodyState();
}

class _CustomAnimationViewBodyState extends State<CustomAnimationViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  late Animation<double> fadeAnimation;
//scale you controll in size widget you want to do it an animation(size this widget is when this animation begin and end)
//fade you controll in opacity color widget you want to do it an animation(opacity this widget is when this animation begin and end)
  @override
  void initState() {
    Future.delayed(
      k3500MilliSeconds,
      () {
        if (mounted) {
          goGoRouterHelper(
            context: context,
            view: kHomeViewRouter,
          );
        }
      },
    );
    fadeAndScaleAnimationMethod();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //1: .min: make the Column(children) take size(height) what does it need. 2: .max: make the Column(children) take size(height) more what does it need.
        children: [
          CustomAnimationSection(
            animationController: animationController,
            fadeAnimation: fadeAnimation,
            scaleAnimation: scaleAnimation,
          ),
        ],
      ),
    );
  }

  void fadeAndScaleAnimationMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: k2500Milliseconds,
    );
    fadeAnimation = Tween<double>(
      begin: 0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeIn, //start slow and dynamically fast
      ),
    );
    scaleAnimation = Tween<double>(
      begin: 0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut, //start fast and dynamically slow
      ),
    );
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
*/
