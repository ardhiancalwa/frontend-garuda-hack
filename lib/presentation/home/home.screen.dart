import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
              onPressed: () {},
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
