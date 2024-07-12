import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final h1 = GoogleFonts.plusJakartaSans(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.2,
  );
  static final h1_light = GoogleFonts.plusJakartaSans(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: whiteColor,
    letterSpacing: 0,
    height: 1.2,
  );

  static final h2 = GoogleFonts.plusJakartaSans(
    fontSize: 18,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.6,
    height: 1.2,
  );
  static final h2_grey = GoogleFonts.plusJakartaSans(
    fontSize: 18,
    fontWeight: FontWeight.w600, // SemiBold
    color: greyColor,
    letterSpacing: -0.6,
    height: 1.2,
  );
  static final h3_grey = GoogleFonts.plusJakartaSans(
    fontSize: 16,
    fontWeight: FontWeight.w500, // SemiBold
    color: greyColor,
    letterSpacing: -0.6,
    height: 1.2,
  );

  static final h3_white = GoogleFonts.plusJakartaSans(
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    color: whiteColor,
    letterSpacing: -0.6,
    height: 1.4,
  );
  static final h3 = GoogleFonts.plusJakartaSans(
    fontSize: 16,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.6,
    height: 1.4,
  );
  static final h4 = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: -0.6,
    color: blackColor,
    height: 1.4,
  );
  static final h4_grey = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w600, // SemiBold
    letterSpacing: 0,
    color: greyColor,
    height: 1.4,
  );

  static final p = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w500, // Regular
    letterSpacing: 0,
    color: Color(0xff5D5C5C),
    height: 1.6,
  );
  static final p_white = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w500, // Regular
    letterSpacing: 0,
    color: whiteColor,
    height: 1.6,
  );
  static final p_light = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.w500, // Regular
    letterSpacing: 0,
    color: textColor,
    height: 1.6,
  );
}
