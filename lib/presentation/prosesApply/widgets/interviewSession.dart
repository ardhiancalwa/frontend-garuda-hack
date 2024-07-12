import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/prosesApply/widgets/ai_interview/chatAI.dart';
import 'package:frontend/presentation/prosesApply/widgets/ai_interview/chatUser.dart';
import 'package:frontend/presentation/prosesApply/widgets/interviewResult.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/speech_controller.dart';

class InterviewSession extends StatelessWidget {
  const InterviewSession({super.key});

  @override
  Widget build(BuildContext context) {
    final SpeechController speechController = Get.put(SpeechController());

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        surfaceTintColor: whiteColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/images/pp_review.png',
              height: 40,
            ),
            SizedBox(width: 10),
            CustomText.h3('AI Recruiter'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  '5 Questions Remaining',
                  style: GoogleFonts.dmSans(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.7,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  height: 40,
                  thickness: 0.2,
                ),
                speechController.showColumn1.value
                    ? Column(
                        children: [
                          ChatAI(
                            chat:
                                'Hello! Congratulations, you have reached the AI interview stage for our UI/UX project. Can you start by introducing yourself and sharing your experience in UI/UX design?',
                            clock: '13.00 PM',
                            height: 104,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ChatUser(
                            height: 160,
                            chat:
                                'Hey! My name is Fathir, and I\'m a recent graduate from university with a degree in Computer Science I only have a little experience in creating UI/UX designs I\'ve only worked on 3 UI/UX design projects for mobile apps',
                            clock: '13.00 PM',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 154),
                            child: SizedBox(
                              width: 90,
                              height: 90,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: CircleBorder(
                                    side: BorderSide(
                                      color: Color(0xff8BA1F7),
                                      width: 5,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  speechController.switchColumn();
                                },
                                child: SvgPicture.asset(
                                  'assets/icons/mic.svg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          ChatAI(
                            chat:
                                'Sure! What\'s the latest UI/UX project you\'ve been working on, Fathir? What\'s it about, and what role did you play in it?',
                            clock: '13.00 PM',
                            height: 82,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ChatUser(
                            chat:
                                'Sure! Recently, I worked on a mobile app for a fitness startup. The app aimed to help users track their workouts and nutrition. I was responsible for creating the user flow, wireframes, and the final visual design. I collaborated closely with the product manager and developers to ensure the design was both user-friendly and feasible to implement.',
                            clock: '13.05 PM',
                            height: 232,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ChatAI(
                            chat:
                                'That sounds like an interesting project. What process do you follow when starting a new UI/UX project?',
                            clock: '13.05 PM',
                            height: 82,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ChatUser(
                            chat:
                                'I usually start with user research to understand the target audience and their needs. This involves conducting surveys, interviews, and usability testing. Then, I create personas and user journeys to map out the user\'s experience. After that, I move on to wireframing and prototyping, followed by visual design. Throughout the process, I conduct usability tests and gather feedback to iterate and improve the design.',
                            clock: '13.07 PM',
                            height: 240,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ChatAI(
                            chat:
                                'Thank you for sharing your experience and insights, Alex. We’ll review your responses and get back to you soon. Have a great day!',
                            clock: '13.10 PM',
                            height: 82,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            height: 62,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: borderColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/icons/check.svg'),
                                  SizedBox(
                                    width: 11,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text: 'Good Job! ',
                                          style: GoogleFonts.plusJakartaSans(
                                            color: blackColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  'You have completed all Questions',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Download Summary',
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: primaryColor,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          PrimaryButton(
                            text: 'See Interview Result',
                            onPressed: () {
                              Get.to(() => InterviewResult());
                            },
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
