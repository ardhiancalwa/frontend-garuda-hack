import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../infrastructure/theme/colors.dart';

class ChatUser extends StatelessWidget {
  ChatUser({
    super.key,
    required this.chat,
    required this.clock,
    required this.height,
  });

  String chat;
  String clock;
  double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Text(
                chat,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                  color: whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset('assets/icons/checklist.svg'),
            SizedBox(
              width: 6,
            ),
            Text(
              clock,
              style: GoogleFonts.plusJakartaSans(
                color: Color(0xff9A9A9A),
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
