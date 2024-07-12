import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/screens.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/proses_apply.controller.dart';
import '../../proses_apply.screen.dart';

class CaseTwo extends StatelessWidget {
  const CaseTwo({
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.h2('Description'),
                SizedBox(
                  height: 16,
                ),
                CustomText.p(
                  'We are looking for a talented UI/UX designer to create a user-friendly and attractive interface for our online education platform. This platform aims to provide a smooth learning experience for students and educators.',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.h2('Project Requirements'),
                SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                    text: '1. Consistent: ',
                    style: GoogleFonts.plusJakartaSans(
                      color: blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.6,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Ensure a consistent design language and color scheme across platforms.',
                        style: TextStyle(
                          color: Color(0xff474747),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                RichText(
                  text: TextSpan(
                    text: '2. Accessibility: ',
                    style: GoogleFonts.plusJakartaSans(
                      color: blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.6,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Prioritize accessibility to meet the needs of users with disabilities.',
                        style: TextStyle(
                          color: Color(0xff474747),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                RichText(
                  text: TextSpan(
                    text: '3. Intuitive: ',
                    style: GoogleFonts.plusJakartaSans(
                      color: blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.6,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'Implement clear navigation menus and easy-to-use icons.',
                        style: TextStyle(
                          color: Color(0xff474747),
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
                CustomText.h2('Project Timeline'),
                SizedBox(
                  height: 16,
                ),
                CustomText.p(
                    'This project has a timeline of 2 weeks of submission deadline.'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText.h2('Upload your project'),
                SizedBox(
                  height: 20,
                ),
                Obx(() {
                  final file = controller.pickedFileProject.value;
                  return file == null
                      ? Container(
                          width: double.infinity,
                          height: 244,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: borderColor,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            color: whiteColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  final result =
                                      await FilePicker.platform.pickFiles(
                                    type: FileType.custom,
                                    allowedExtensions: ['pdf'],
                                  );
                                  if (result == null) {
                                    return;
                                  }
                                  // open file
                                  final file = File(result.files.single.path!);
                                  controller.setPickedFileProject(file);
                                },
                                child:
                                    Image.asset('assets/images/upload_cv.png'),
                              ),
                              CustomText.h2_grey('Upload your CV here'),
                            ],
                          ),
                        )
                      : SizedBox(
                          height: 74,
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: whiteColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                    color: borderColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (controller.pickedFileProject.value !=
                                    null) {
                                  Get.to(() => PDFViewPage(
                                      file:
                                          controller.pickedFileProject.value!));
                                } else {
                                  Get.snackbar(
                                    'Error',
                                    'Please select a CV first',
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 14,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 43,
                                          height: 43,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                primaryColor.withOpacity(0.1),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: SvgPicture.asset(
                                                'assets/icons/file.svg'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomText.h2(
                                                '${file.path.split('/').last}'),
                                            Text(
                                              '${(file.lengthSync() / 1024).toStringAsFixed(2)} KB',
                                              style: GoogleFonts.dmSans(
                                                color: greyColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.setPickedFile(null);
                                      },
                                      child: SvgPicture.asset(
                                          'assets/icons/trash.svg'),
                                    ),
                                  ],
                                ),
                              )),
                        );
                }),
              ],
            ),
            Obx(
              () => controller.pickedFileProject.value == null
                  ? SizedBox(height: 157)
                  : SizedBox(
                      height: 330,
                    ),
            ),
            Obx(() => SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:
                          controller.pickedFileProject.value == null
                              ? Color(0xffF2F2F2)
                              : primaryColor, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    onPressed: () {
                      if (controller.pickedFileProject.value != null) {
                        Get.to(() => HomeScreen());
                      } else {
                        Get.snackbar(
                          'Error',
                          'Please select a CV first',
                          snackPosition: SnackPosition.BOTTOM,
                        );
                      }
                    },
                    child: Text(
                      'Submit Project',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: controller.pickedFileProject.value == null
                            ? Color(0xffD0CDCD)
                            : whiteColor,
                        letterSpacing: 0.6,
                        height: 1,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
