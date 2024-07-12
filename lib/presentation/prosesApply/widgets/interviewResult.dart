  import 'package:flutter/material.dart';
  import 'package:frontend/infrastructure/theme/colors.dart';
  import 'package:frontend/infrastructure/theme/text_component.dart';
  import 'package:frontend/presentation/prosesApply/widgets/indikatorResult.dart';

  class InterviewResult extends StatelessWidget {
    const InterviewResult({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          surfaceTintColor: whiteColor,
          title: CustomText.h2(
            'Interview Result',
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 306,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xffF3F3F3),
                  ),
                  child: Center(
                    child: CustomText.p(
                        'Congrats! You Passed Interview Selection  🎉🌟'),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  width: double.infinity,
                  height: 500,
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
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 100,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText.h1('90%'),
                            SizedBox(
                              height: 8,
                            ),
                            CustomText.h2('Overall Score Interview Result'),
                            SizedBox(
                              height: 16,
                            ),
                            IndikatorResult(
                              title: 'Profesionalism',
                              percentage: '95%',
                              value: 0.95,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            IndikatorResult(
                              title: 'Teamwork',
                              percentage: '90%',
                              value: 0.9,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            IndikatorResult(
                              title: 'Leadership',
                              percentage: '80%',
                              value: 0.8,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            IndikatorResult(
                              title: 'Communication',
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
                            SizedBox(
                              height: 20,
                            ),
                            IndikatorResult(
                              title: 'Sociability',
                              percentage: '90%',
                              value: 0.9,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
