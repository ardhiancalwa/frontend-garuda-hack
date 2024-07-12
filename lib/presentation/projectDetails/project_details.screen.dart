import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/navigation/routes.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/projectDetails/widgets/ratingIndikator.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/project_details.controller.dart';
import 'widgets/cardReview.dart';
import 'widgets/ratingCategory.dart';

class ProjectDetailsScreen extends GetView<ProjectDetailsController> {
  const ProjectDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Transparent status bar
        statusBarIconBrightness: Brightness.light, // White icons
      ),
    );

    return Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 283,
              color: primaryColor,
            ),
            Positioned(
              top: -526,
              child: Image.asset(
                'assets/images/pattern_background.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 44),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: whiteColor,
                        ),
                      ),
                      Text(
                        'Project Details',
                        style: GoogleFonts.dmSans(
                          color: whiteColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: CircleBorder(
                                side: BorderSide(
                                  color: whiteColor,
                                  width: 1,
                                ),
                              ),
                              padding: EdgeInsets.all(8)),
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 16,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/tokopadia.png'),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'UI/UX Designer',
                        style: GoogleFonts.dmSans(
                          fontSize: 24,
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -0.6,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'AI Spaces',
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.6,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        width: 142,
                        height: 42,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: primaryColor,
                              width: 2,
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/titik.svg',
                            ),
                            Text(
                              'Beginner Level',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 320),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText.h2('Project Description'),
                        SizedBox(
                          height: 16,
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                'AI Spaces is a Financial Literacy company in the Education sector. This project has been running for approximately 3 months but is still in its infancy. ',
                            style: GoogleFonts.dmSans(
                              color: greyColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.6,
                            ),
                            children: [
                              TextSpan(
                                text: 'Read More',
                                style: GoogleFonts.dmSans(
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText.h2('Skills required'),
                        SizedBox(
                          height: 16,
                        ),
                        CustomText.h3_grey('1. General knowledge of UI/UX'),
                        SizedBox(
                          height: 8,
                        ),
                        CustomText.h3_grey(
                            '2. General knowledge of Design Thinking'),
                        SizedBox(
                          height: 8,
                        ),
                        CustomText.h3_grey('3. Can design wireframes'),
                        SizedBox(
                          height: 8,
                        ),
                        CustomText.h3_grey('4. Can create a style guide'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText.h2('Project Review'),
                            Text(
                              'See all',
                              style: GoogleFonts.dmSans(
                                color: primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CardReview(),
                              CardReview(),
                              CardReview(),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CustomText.h2('Overall Ratings'),
                            SizedBox(
                              height: 19,
                            ),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryColor.withOpacity(0.1),
                              ),
                              child: Center(
                                child: Text(
                                  '4.5',
                                  style: GoogleFonts.dmSans(
                                    color: primaryColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: secondaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: secondaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: secondaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: secondaryColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: secondaryColor,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            CustomText.h4_grey('283 Reviews'),
                          ],
                        ),
                        SizedBox(
                          width: 34,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RatingIndikator(
                              star: '5',
                              value: 0.65,
                              sumRating: '200',
                            ),
                            RatingIndikator(
                              star: '4',
                              value: 0.62,
                              sumRating: '183',
                            ),
                            RatingIndikator(
                              star: '3',
                              value: 0.5,
                              sumRating: '25',
                            ),
                            RatingIndikator(
                              star: '2',
                              value: 0.4,
                              sumRating: '18',
                            ),
                            RatingIndikator(
                              star: '1',
                              value: 0.2,
                              sumRating: '15',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText.h2('Rating Categories'),
                        SizedBox(
                          height: 12,
                        ),
                        RatingCategory(
                          title: 'Clarity of purpose',
                        ),
                        RatingCategory(
                          title: 'Pressure',
                        ),
                        RatingCategory(
                          title: 'Feedback mentor',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 113,
                    ),
                    PrimaryButton(
                      text: 'Apply',
                      onPressed: () {
                        Get.toNamed(Routes.PROSES_APPLY);
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
