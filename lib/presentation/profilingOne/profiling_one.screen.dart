import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/navigation/routes.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/presentation/profilingOne/widgets/card_profiling.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/profiling_one.controller.dart';

class ProfilingOneScreen extends GetView<ProfilingOneController> {
  const ProfilingOneScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              'What are you looking for?',
              style: GoogleFonts.dmSans(
                color: blackColor,
                fontSize: 28,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.8,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please provide your purpose',
              style: GoogleFonts.dmSans(
                color: greyColor,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 37,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardProfiling(
                      image: 'profilingOne',
                      title: "Project Exercise",
                      isChecked: controller.isCheckedOne,
                      toggleCheck: controller.toggleCheckOne,
                    ),
                    CardProfiling(
                      image: 'profilingTwo',
                      title: "Improve my portfolio",
                      isChecked: controller.isCheckedTwo,
                      toggleCheck: controller.toggleCheckTwo,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CardProfiling(
                  image: 'profilingThree',
                  title: "Preparation for My Career",
                  isChecked: controller.isCheckedThree,
                  toggleCheck: controller.toggleCheckThree,
                ),
              ],
            ),
            SizedBox(
              height: 227,
            ),
            PrimaryButton(
              text: 'Next',
              onPressed: () {
                Get.toNamed(Routes.BOTTOM_NAV_BAR);
              },
            )
          ],
        ),
      ),
    );
  }
}
