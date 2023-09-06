// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruitsmarket/Features/OnBoarding/Presentation/OnBoardingView.dart';
import 'package:fruitsmarket/core/Utiles/Image_Assets/Image.dart';
import 'package:fruitsmarket/core/Utiles/Size_Config.dart';
import 'package:fruitsmarket/core/Utiles/Styles/Styles.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    animationController!.repeat(reverse: true);
    goToNextView();
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        AnimatedBuilder(
          animation: fadingAnimation!,
          builder: (context, _) => Opacity(
            opacity: fadingAnimation!.value,
            child: Text(
              'Fruit Market',
              style: Style.primaryTextStyle.copyWith(
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffFFFFFF)),
            ),
          ),
        ),
        Image.asset(
          splashViewImage,
        )
      ],
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnBoardingView(),
          transition: Transition.zoom,
          duration: const Duration(milliseconds: 900));
    });
  }
}
