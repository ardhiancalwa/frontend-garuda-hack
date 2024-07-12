import 'package:flutter/material.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/prosesApply/widgets/project_simulation/project_result.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/notification.controller.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          surfaceTintColor: whiteColor,
          title: CustomText.h2('Notification'),
          centerTitle: false,
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: borderColor,
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: borderColor,
                    width: 1,
                  ),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    Image.asset('assets/images/pp_review.png'),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'The Mentor',
                            style: GoogleFonts.plusJakartaSans(
                              color: blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: 'Has assesed you submission',
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 114,
                              height: 40,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: primaryColor,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 8)),
                                  onPressed: () {
                                    Get.to(() => ProjectResult());
                                  },
                                  child: Text(
                                    'See your result',
                                    style: GoogleFonts.plusJakartaSans(
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            SizedBox(
                              width: 114,
                              height: 40,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: whiteColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: BorderSide(
                                          color: primaryColor,
                                          width: 1,
                                        )),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8)),
                                onPressed: () {},
                                child: Text(
                                  'Mark As Read',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
