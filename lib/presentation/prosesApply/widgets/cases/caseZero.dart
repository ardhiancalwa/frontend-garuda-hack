import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../infrastructure/theme/colors.dart';
import '../../../../infrastructure/theme/text_component.dart';
import '../../controllers/proses_apply.controller.dart';
import '../../proses_apply.screen.dart';
import '../../screaningResult.dart';

class CaseZero extends StatelessWidget {
  const CaseZero({
    super.key,
    required this.controller,
  });

  final ProsesApplyController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText.h2('CV Criteria'),
              SizedBox(
                height: 16,
              ),
              CustomText.p('1. CV in the form of ATS '),
              SizedBox(
                height: 4,
              ),
              CustomText.p('2. Simple and consistent text format'),
              SizedBox(
                height: 4,
              ),
              CustomText.p('3. Clear and structured section headings'),
              SizedBox(
                height: 4,
              ),
              CustomText.p('4. Proper file format (.docx or .pdf)'),
              SizedBox(
                height: 4,
              ),
              CustomText.p('5. Use of bullet points'),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Obx(() {
            final file = controller.pickedFile.value;
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
                            final result = await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['pdf'],
                            );
                            if (result == null) {
                              return;
                            }
                            // open file
                            final file = File(result.files.single.path!);
                            controller.setPickedFile(file);
                          },
                          child: Image.asset('assets/images/upload_cv.png'),
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
                          if (controller.pickedFile.value != null) {
                            Get.to(() => PDFViewPage(
                                file: controller.pickedFile.value!));
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 43,
                                    height: 43,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryColor.withOpacity(0.1),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                child:
                                    SvgPicture.asset('assets/icons/trash.svg'),
                              ),
                            ],
                          ),
                        )),
                  );
          }),
          Obx(
            () => controller.pickedFile.value == null
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
                    backgroundColor: controller.pickedFile.value == null
                        ? Color(0xffF2F2F2)
                        : primaryColor, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () {
                    if (controller.pickedFile.value != null) {
                      Get.to(() => ScreaningResult());
                    } else {
                      Get.snackbar(
                        'Error',
                        'Please select a CV first',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  },
                  child: Text(
                    'Submit CV',
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffD0CDCD),
                      letterSpacing: 0.6,
                      height: 1,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
