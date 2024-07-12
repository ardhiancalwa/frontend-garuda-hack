import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../infrastructure/theme/colors.dart';

class ChatAI extends StatelessWidget {
  ChatAI({
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            width: double.infinity,
            height: height,
            decoration: BoxDecoration(
              color: Color(0xffF1F1F1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
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
                  color: blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
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
    );
  }
}
