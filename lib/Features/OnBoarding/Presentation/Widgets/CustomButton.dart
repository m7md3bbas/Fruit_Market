// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/Utiles/Styles/Styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {this.borderRadius,
      this.buttonTextColor,
      required this.buttonBackGroundColor,
      required this.buttonText,
      required this.onTap,
      super.key});
  final Function() onTap;
  final String buttonText;
  final Color buttonBackGroundColor;
  final Color? buttonTextColor;
  final bool? borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 48,
          width: 146,
          decoration: BoxDecoration(
              color: buttonBackGroundColor,
              borderRadius: borderRadius == true
                  ? BorderRadius.circular(10)
                  : BorderRadius.circular(0)),
          child: Center(
            child: Text(
              buttonText,
              style: Style.primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: buttonTextColor),
            ),
          ),
        ));
  }
}
