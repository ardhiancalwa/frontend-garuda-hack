import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colors.dart';
import '../controllers/profiling_two.controller.dart';

class CardProfiling extends StatelessWidget {
  CardProfiling({
    super.key,
    required this.icon,
    required this.title,
    required this.toggleFunction,
    required this.isClicked,
  });
  final String icon;
  final String title;
  final VoidCallback toggleFunction;
  final RxBool isClicked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleFunction,
      child: Obx(() {
        return Container(
          width: 160,
          height: 114,
          decoration: BoxDecoration(
            color: isClicked.value ? primaryColor : whiteColor,
            border: Border.all(
              color: isClicked.value ? borderColor : borderColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: isClicked.value
                        ? secondaryColor
                        : primaryColor.withOpacity(0.2),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isClicked.value
                          ? primaryColor.withOpacity(0.8)
                          : borderColor,
                      width: 7,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset('assets/icons/$icon.svg'),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    color: isClicked.value ? whiteColor : Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
