import 'package:flutter/material.dart';
import './textstyle.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;

  CustomText.h1(this.text) : style = TextStyles.h1;
  CustomText.h2(this.text) : style = TextStyles.h2;
  CustomText.h3(this.text) : style = TextStyles.h3;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
