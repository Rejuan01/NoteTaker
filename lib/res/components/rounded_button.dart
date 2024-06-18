import 'package:flutter/material.dart';
import 'package:note_taker/res/colors/app_color.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double height, width;
  final Color buttonColor, textColor;
  final VoidCallback onTap;
  const RoundedButton(
      {super.key,
      required this.text,
      this.height = 50,
      this.width = double.infinity,
      this.buttonColor = AppColor.buttonColor,
      this.textColor = Colors.white,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: buttonColor),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: height / 3),
          ),
        ),
      ),
    );
  }
}
