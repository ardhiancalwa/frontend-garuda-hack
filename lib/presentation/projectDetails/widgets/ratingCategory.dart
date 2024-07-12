import 'package:flutter/material.dart';

import '../../../infrastructure/theme/colors.dart';
import '../../../infrastructure/theme/text_component.dart';

class RatingCategory extends StatelessWidget {
  RatingCategory({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText.p(title),
          Row(
            children: [
              Icon(
                Icons.star,
                color: secondaryColor,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: secondaryColor,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
