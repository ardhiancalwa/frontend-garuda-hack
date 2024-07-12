import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final h1 = GoogleFonts.dmSans(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.6,
    height: 1.2,
  );

  static final h2 = GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.6,
    height: 1.2,
  );
  static final h2_grey = GoogleFonts.dmSans(
    fontSize: 18,
    fontWeight: FontWeight.w600, // SemiBold
    color: greyColor,
    letterSpacing: -0.6,
    height: 1.2,
  );
  static final h3_grey = GoogleFonts.dmSans(
    fontSize: 16,
    fontWeight: FontWeight.w500, // SemiBold
    color: greyColor,
    letterSpacing: -0.6,
    height: 1.2,
  );

  static final h3 = GoogleFonts.dmSans(
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.6,
    height: 1.4,
  );
  static final h4 = GoogleFonts.dmSans(
    fontSize: 12,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.6,
    color: blackColor,
    height: 1.4,
  );
  static final h4_grey = GoogleFonts.dmSans(
    fontSize: 12,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.6,
    color: greyColor,
    height: 1.4,
  );
}
