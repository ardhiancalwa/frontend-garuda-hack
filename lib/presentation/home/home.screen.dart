import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/navigation/routes.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/home/widgets/buttonCategory.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/home.controller.dart';
import 'widgets/cardProject.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: whiteColor,
        surfaceTintColor: whiteColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0), // Add padding here
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/pp_home.png'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Good morning',
              style: GoogleFonts.dmSans(
                color: lightGreyColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            CustomText.h1('Fathir'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0), // Add padding here
            child: IconButton(
              onPressed: () {
                Get.toNamed(Routes.NOTIFICATION);
              },
              icon: SvgPicture.asset('assets/icons/notification.svg'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.h2('Progress Project'),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 191,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: primaryColor,
                        ),
                      ),
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/images/pattern_background3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/papikos.png'),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    CustomText.p_white('AI Spaces Company'),
                                  ],
                                ),
                                Container(
                                  width: 165,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: whiteColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            color: whiteColor.withOpacity(0.3),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: SvgPicture.asset(
                                                'assets/icons/percentage.svg'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        CustomText.p_white('40% Has Completed')
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText.p_white('Beginner Level'),
                                CustomText.h3_white('UI/UX Designer'),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomText.p_white('Your progress : '),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 96,
                                      decoration: BoxDecoration(
                                        color: secondaryColor,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'CV Screaning',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 10,
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 96,
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'AI Interview',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 10,
                                        color: whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 96,
                                      decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      'Project Simulation',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 10,
                                        color: whiteColor,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                autocorrect: false,
                cursorColor: blackColor,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset('assets/icons/search.svg'),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xffE5E5E5),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Color(0xffE5E5E5),
                      width: 1,
                    ),
                  ),
                  hintText: 'Search Projects',
                  hintStyle: GoogleFonts.plusJakartaSans(
                    color: lightGreyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 47,
                      height: 40,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: primaryColor,
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'All',
                          style: GoogleFonts.dmSans(
                            color: primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ButtonCategory(
                      title: 'UI/UX Designer',
                      icon: 'uiux',
                    ),
                    ButtonCategory(
                      title: 'Front end Dev',
                      icon: 'uiux',
                    ),
                    ButtonCategory(
                      title: 'Back end Dev',
                      icon: 'uiux',
                    ),
                    ButtonCategory(
                      title: 'Data Analyst',
                      icon: 'uiux',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.h1('Project by Your Profile'),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardProject(
                          company: 'Tokopadia',
                          image: 'tokopadia',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                        CardProject(
                          company: 'Papikos',
                          image: 'papikos',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                        CardProject(
                          company: 'Tokopadia',
                          image: 'tokopadia',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                        CardProject(
                          company: 'Tokopadia',
                          image: 'tokopadia',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.h1('Most Applied Projects'),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardProject(
                          company: 'Tanipadi',
                          image: 'tanipadi',
                          level: 'Beginner',
                          project: 'Product Designer',
                          percentage_match: '90%',
                          slot: '3',
                        ),
                        CardProject(
                          company: 'Nesetle',
                          image: 'tanipadi',
                          level: 'Beginner',
                          project: 'UI Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                        CardProject(
                          company: 'Tokopadia',
                          image: 'tokopadia',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                        CardProject(
                          company: 'Tokopadia',
                          image: 'tokopadia',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText.h1('Top Rated Projects'),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardProject(
                          company: 'Tanipadi',
                          image: 'tanipadi',
                          level: 'Beginner',
                          project: 'Product Designer',
                          percentage_match: '90%',
                          slot: '3',
                        ),
                        CardProject(
                          company: 'Nesetle',
                          image: 'tanipadi',
                          level: 'Beginner',
                          project: 'UI Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                        CardProject(
                          company: 'Tokopadia',
                          image: 'tokopadia',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                        CardProject(
                          company: 'Tokopadia',
                          image: 'tokopadia',
                          level: 'Beginner',
                          project: 'UI/UX Designer',
                          percentage_match: '90%',
                          slot: '5',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
