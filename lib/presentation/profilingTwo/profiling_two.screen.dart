import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/navigation/routes.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/profilingTwo/widgets/cardProfiling.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/profiling_two.controller.dart';

class ProfilingTwoScreen extends GetView<ProfilingTwoController> {
  const ProfilingTwoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfilingTwoController());

    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          surfaceTintColor: whiteColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.h1('Select Your Dream Job'),
              SizedBox(
                height: 16,
              ),
              CustomText.p_light('Please provide your future job'),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardProfiling(
                        icon: 'ui',
                        title: 'User Interface & Experience Design',
                        toggleFunction: controller.toggleClickedOne,
                        isClicked: controller.isClickedOne,
                      ),
                      CardProfiling(
                        icon: 'be',
                        title: 'Backend Developer',
                        toggleFunction: controller.toggleClickedTwo,
                        isClicked: controller.isClickedTwo,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardProfiling(
                        icon: 'be-dev',
                        title: 'Backend Development',
                        toggleFunction: controller.toggleClickedThree,
                        isClicked: controller.isClickedThree,
                      ),
                      CardProfiling(
                        icon: 'data',
                        title: 'Data Engineering',
                        toggleFunction: controller.toggleClickedFour,
                        isClicked: controller.isClickedFour,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CardProfiling(
                        icon: 'dimar',
                        title: 'Digital Marketing',
                        toggleFunction: controller.toggleClickedFive,
                        isClicked: controller.isClickedFive,
                      ),
                      CardProfiling(
                        icon: 'be',
                        title: 'Fullstack Developer',
                        toggleFunction: controller.toggleClickedSix,
                        isClicked: controller.isClickedSix,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 265,
              ),
              PrimaryButton(
                text: 'Next',
                onPressed: () {
                  Get.toNamed(Routes.BOTTOM_NAV_BAR);
                },
              )
            ],
          ),
        ));
  }
}
