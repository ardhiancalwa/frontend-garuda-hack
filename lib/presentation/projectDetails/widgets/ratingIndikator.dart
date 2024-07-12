import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colors.dart';
import '../../../infrastructure/theme/text_component.dart';

class RatingIndikator extends StatelessWidget {
  RatingIndikator({
    super.key,
    required this.star,
    required this.value,
    required this.sumRating,
  });

  String star;
  double value;
  String sumRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            star,
            style: GoogleFonts.dmSans(
              color: blackColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            Icons.star,
            color: secondaryColor,
          ),
          SizedBox(
            width: 9,
          ),
          Container(
            width: 83,
            height: 7, // Set the width of the linear progress indicator
            child: LinearProgressIndicator(
              value: value, // 50% progress
              backgroundColor: secondaryColor.withOpacity(0.3),
              valueColor: AlwaysStoppedAnimation(secondaryColor),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          CustomText.h4_grey(sumRating)
        ],
      ),
    );
  }
}
