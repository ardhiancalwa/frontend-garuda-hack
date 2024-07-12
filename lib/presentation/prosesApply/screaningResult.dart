import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/prosesApply/controllers/proses_apply.controller.dart';
import 'package:frontend/presentation/prosesApply/widgets/indikatorResult.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/description_ai_recomendation.dart';

class ScreaningResult extends StatelessWidget {
  final controller = Get.find<ProsesApplyController>();
  ScreaningResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        surfaceTintColor: whiteColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: CustomText.h2('Screaning Result'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 28,
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 38,
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Text(
                    'Congratulations Your Passed CV Selection  🎉🌟',
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 197,
                decoration: BoxDecoration(
                    color: primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: primaryColor,
                      width: 1,
                    )),
                child: Stack(
                  children: [
                    Container(
                      height: 135,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff0047FF),
                            Color(0xff6F7AFF),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Image.asset('assets/images/result_background.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your CV Performance',
                            style: GoogleFonts.plusJakartaSans(
                              color: whiteColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Excellence',
                            style: GoogleFonts.plusJakartaSans(
                              color: whiteColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Matches the project requirements',
                            style: GoogleFonts.plusJakartaSans(
                              color: whiteColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 16,
                      right: 16,
                      bottom: 15,
                      child: Text(
                        'The system assesses your 70% suitability for this project.',
                        style: GoogleFonts.plusJakartaSans(
                            color: primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 365,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText.h2('CV Result Detail'),
                      SizedBox(
                        height: 16,
                      ),
                      CustomText.p(
                        'Your resume 70% matches the project requirements and include same keyword that recruiter as ATS',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          IndikatorResult(
                            title: 'Personal Details',
                            percentage: '65%',
                            value: 0.65,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IndikatorResult(
                            title: 'Experience',
                            percentage: '35%',
                            value: 0.35,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IndikatorResult(
                            title: 'Education',
                            percentage: '90%',
                            value: 0.9,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IndikatorResult(
                            title: 'Skills',
                            percentage: '90%',
                            value: 0.9,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText.h1('AI Recomendation'),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SvgPicture.asset('assets/icons/kicau.svg'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    height: 515,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor,
                        width: 1,
                      ),
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          DescriptionAIRecomendation(
                            title: 'Personal Details',
                            description:
                                'Add a link to your LinkedIn profile or online portfolio if you have one. Avoid including the full address, just the city and country.',
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                          ),
                          DescriptionAIRecomendation(
                            title: 'Experience',
                            description:
                                'Start each bullet point with a verb that shows a concrete action, such as "Assisted," "Oversaw," "Conducted," and "Generated." Include quantifiable achievements to show the impact of your work, such as a percentage increase in social media followers or engagement. Provide more specific descriptions of your tasks to show how you have applied your skills in a work context.',
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                          ),
                          DescriptionAIRecomendation(
                            title: 'Education',
                            description:
                                'Add relevant courses and academic achievements such as Dean\'s List or awards.',
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                          ),
                          DescriptionAIRecomendation(
                            title: 'Skills',
                            description:
                                'Use keywords that are specific and relevant to the position being applied for. Divide skills into sub-categories if needed for clarity.',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(
                    text: 'Next',
                    onPressed: () {
                      controller.activeStep++;
                      Get.back();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
