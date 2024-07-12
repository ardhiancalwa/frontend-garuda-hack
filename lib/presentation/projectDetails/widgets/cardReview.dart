import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colors.dart';
import '../../../infrastructure/theme/text_component.dart';

class CardReview extends StatelessWidget {
  const CardReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 141,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(
            color: lightGreyColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
          color: whiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/pp_review.png'),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        children: [
                          CustomText.h3('Farid Hel'),
                          CustomText.h4_grey('18 Years Old')
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: secondaryColor,
                      ),
                      CustomText.h3('4.7'),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 9,
              ),
              Text(
                'By working on this project, I know how to solve real-world case studies according to customer requests.',
                style: GoogleFonts.dmSans(
                  color: greyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}