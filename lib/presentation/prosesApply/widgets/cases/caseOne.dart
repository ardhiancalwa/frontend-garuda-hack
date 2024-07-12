import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/prosesApply/widgets/containerSelection.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/proses_apply.controller.dart';
import '../ai_interview/interviewSession.dart';

class CaseOne extends StatelessWidget {
  const CaseOne({
    super.key,
    required this.controller,
  });

  final ProsesApplyController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              height: 40,
              thickness: 0.5,
            ),
            Center(
              child: Image.asset('assets/images/ai_image.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to AI Interview Selection',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 0,
                height: 1.2,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            CustomText.p_light(
                'Hello! Congratulations on reaching the AI Interview stage.'),
            Divider(
              height: 32,
              thickness: 0.5,
            ),
            CustomText.h2('What will you do in this selection?'),
            SizedBox(
              height: 12,
            ),
            CustomText.p_light(
                'Hello! Thank you for joining AI Interview. Before we begin, let us explain how this process will work.'),
            SizedBox(
              height: 14,
            ),
            ContainerSelection(
              title: 'Interview With AI based your project',
              description:
                  'You will be doing an interview with AI on the topic based on the project you have taken.',
              icon: 'ai_session',
            ),
            SizedBox(
              height: 20,
            ),
            ContainerSelection(
              title: 'Speech to Text Interview',
              description:
                  'The interview will be conducted using the speech-to-text method.',
              icon: 'speech_session',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 75, bottom: 10),
              child: PrimaryButton(
                text: 'Start Interview',
                onPressed: () {
                  Get.to(() => InterviewSession());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
