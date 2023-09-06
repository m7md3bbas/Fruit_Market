import 'package:flutter/material.dart';
import 'package:fruitsmarket/Features/OnBoarding/Presentation/OnBoardingView.dart';
import 'package:fruitsmarket/Features/Splash/Presentaton/Splash_View.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FruitsMarket());
}

class FruitsMarket extends StatelessWidget {
  const FruitsMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
