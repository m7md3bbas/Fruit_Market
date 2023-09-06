// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruitsmarket/Features/Splash/Presentaton/Widgets/Splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff69A03A),
      body: SplashViewBody(),
    );
  }
}
