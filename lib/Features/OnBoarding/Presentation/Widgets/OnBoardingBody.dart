// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruitsmarket/Features/OnBoarding/Presentation/Widgets/CustomButton.dart';
import 'package:fruitsmarket/core/Utiles/Size_Config.dart';
import 'package:fruitsmarket/core/Utiles/Styles/Styles.dart';
import 'package:get/get.dart';

class OnBoardingBodyView extends StatelessWidget {
  const OnBoardingBodyView(
      {required this.onTap,
      required this.title,
      required this.subTitle,
      required this.showSkip,
      required this.imageView,
      required this.buttonText,
      super.key});
  final bool showSkip;
  final String imageView;
  final String title;
  final String subTitle;
  final String buttonText;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              showSkip == true
                  ? GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Skip',
                        style: Style.primaryTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    )
                  : const Text(''),
            ],
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * .85,
          ),
          Image.asset(
            imageView,
            height: 256,
            width: 215,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * .55,
          ),
          Text(
            title,
            style: Style.primaryTextStyle.copyWith(
                fontSize: 20,
                color: const Color(0xff2F2E41),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * .45,
          ),
          Text(
            subTitle,
            style: Style.primaryTextStyle
                .copyWith(fontSize: 20, color: const Color(0xff78787C)),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * .95,
          ),
          CustomButton(
              buttonTextColor: const Color(0xffffffff),
              buttonBackGroundColor: const Color(0xff69A03A),
              buttonText: buttonText,
              onTap: onTap),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    ));
  }
}
