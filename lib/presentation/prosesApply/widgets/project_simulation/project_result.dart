import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/navigation/routes.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/home/widgets/cardProject.dart';
import 'package:frontend/presentation/prosesApply/controllers/proses_apply.controller.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../indikatorResult.dart';

class ProjectResult extends StatelessWidget {
  const ProjectResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.offAllNamed(Routes.BOTTOM_NAV_BAR);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        backgroundColor: whiteColor,
        surfaceTintColor: whiteColor,
        title: CustomText.h2('Project Result'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 260,
                height: 38,
                decoration: BoxDecoration(
                  color: Color(0xffFBFBFB),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child:
                      CustomText.p('Congrats! You Passed This Project  🎉🌟'),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: borderColor,
                    width: 1,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
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
                      top: 0,
                      child: Image.asset(
                        'assets/images/pattern_background2.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText.h1_light('Excellent'),
                          SizedBox(
                            height: 4,
                          ),
                          CustomText.p_white(
                              'The Recruiter is interested to you')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 90, 16, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText.h1('90%'),
                          SizedBox(
                            height: 8,
                          ),
                          CustomText.h2('Overall Your Project Work Result'),
                          SizedBox(
                            height: 16,
                          ),
                          IndikatorResult(
                            title: 'Information Structure and Architecture',
                            percentage: '95%',
                            value: 0.95,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IndikatorResult(
                            title: 'Interaction Design',
                            percentage: '90%',
                            value: 0.9,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IndikatorResult(
                            title: 'Visual and Aesthetic Consistency',
                            percentage: '80%',
                            value: 0.8,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IndikatorResult(
                            title: 'Innovation',
                            percentage: '95%',
                            value: 0.95,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          IndikatorResult(
                            title: 'Creativity',
                            percentage: '90%',
                            value: 0.9,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText.h1('Input From Mentor'),
              // input video
              SizedBox(height: 16),
              GetBuilder<ProsesApplyController>(
                init: ProsesApplyController(),
                builder: (controller) {
                  if (controller.isVideoInitialized.value != null) {
                    return AspectRatio(
                      aspectRatio:
                          controller.videoPlayerController.value.aspectRatio,
                      child: VideoPlayer(controller.videoPlayerController),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomText.h2(
                'The Next Project Recoomendation',
              ),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardProject(
                      company: 'Tanipadi',
                      image: 'tanipadi',
                      level: 'Intermediate',
                      project: 'Product Designer',
                      percentage_match: '90%',
                      slot: '3',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    CardProject(
                      company: 'Tanipadi',
                      image: 'tanipadi',
                      level: 'Intermediate',
                      project: 'Product Designer',
                      percentage_match: '90%',
                      slot: '3',
                    ),
                    CardProject(
                      company: 'Tanipadi',
                      image: 'tanipadi',
                      level: 'Intermediate',
                      project: 'Product Designer',
                      percentage_match: '90%',
                      slot: '3',
                    ),
                    CardProject(
                      company: 'Tanipadi',
                      image: 'tanipadi',
                      level: 'Intermediate',
                      project: 'Product Designer',
                      percentage_match: '90%',
                      slot: '3',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              PrimaryButton(
                text: 'Claim Sertificate',
                onPressed: () {},
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
