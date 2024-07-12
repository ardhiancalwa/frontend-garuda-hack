import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colors.dart';

class ButtonCategory extends StatelessWidget {
  ButtonCategory({
    super.key,
    required this.title,
    required this.icon,
  });

  String title;
  String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        width: 135,
        height: 40,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Color(0xffE5E5E5),
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.dmSans(
              color: greyColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
