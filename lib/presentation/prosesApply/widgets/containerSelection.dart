import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../infrastructure/theme/colors.dart';

class ContainerSelection extends StatelessWidget {
  ContainerSelection({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });
  String title;
  String description;
  String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xffFBFBFB),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset('assets/icons/$icon.svg'),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            CustomText.h3(title),
            SizedBox(
              height: 12,
            ),
            CustomText.p_light(description),
          ],
        ),
      ),
    );
  }
}
