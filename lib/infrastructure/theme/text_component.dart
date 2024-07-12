import 'package:flutter/material.dart';
import './textstyle.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;

  CustomText.h1(this.text) : style = TextStyles.h1;
  CustomText.h2(this.text) : style = TextStyles.h2;
  CustomText.h2_grey(this.text) : style = TextStyles.h2_grey;
  CustomText.h3_grey(this.text) : style = TextStyles.h3_grey;
  CustomText.h3(this.text) : style = TextStyles.h3;
  CustomText.h4(this.text) : style = TextStyles.h4;
  CustomText.h4_grey(this.text) : style = TextStyles.h4_grey;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
