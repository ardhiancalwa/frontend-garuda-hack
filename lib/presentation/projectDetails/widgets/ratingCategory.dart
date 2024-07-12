import 'package:flutter/material.dart';

import '../../../infrastructure/theme/colors.dart';
import '../../../infrastructure/theme/text_component.dart';

class RatingCategory extends StatelessWidget {
  RatingCategory({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText.h4_grey(title),
          Row(
            children: [
              Icon(
                Icons.star,
                color: secondaryColor,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
