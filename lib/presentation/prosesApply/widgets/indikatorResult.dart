import 'package:flutter/material.dart';

import '../../../infrastructure/theme/colors.dart';
import '../../../infrastructure/theme/text_component.dart';

class IndikatorResult extends StatelessWidget {
  IndikatorResult({
    super.key,
    required this.title,
    required this.percentage,
    required this.value,
  });
  String title;
  String percentage;
  double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText.h3(title),
            CustomText.h3_grey(percentage),
          ],
        ),
        SizedBox(
          height: 6,
        ),
        SizedBox(
          width: double.infinity,
          height: 7,
          child: LinearProgressIndicator(
            color: primaryColor,
            backgroundColor: primaryColor.withOpacity(0.1),
            value: value,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ],
    );
  }
}
