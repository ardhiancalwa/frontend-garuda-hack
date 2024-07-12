import 'dart:io';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/primary_button.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/proses_apply.controller.dart';

class ProsesApplyScreen extends GetView<ProsesApplyController> {
  const ProsesApplyScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        surfaceTintColor: whiteColor,
        title: CustomText.h2('Screening CV'),
        centerTitle: true,
      ),
      body: Obx(
        () {
          final activeStep = controller.activeStep.value;
          return Column(
            children: [
              EasyStepper(
                activeStep: activeStep,
                activeStepBorderColor: whiteColor,
                unreachedStepBorderColor: whiteColor,
                activeStepBackgroundColor: primaryColor,
                finishedStepBackgroundColor: primaryColor,
                finishedStepBorderColor: whiteColor,
                lineStyle: LineStyle(
                  activeLineColor: lightGreyColor,
                  finishedLineColor: lightGreyColor,
                  defaultLineColor: lightGreyColor,
                  unreachedLineColor: lightGreyColor,
                  lineType: LineType.dashed,
                  lineSpace: 5,
                  lineLength: 50,
                ),
                steps: [
                  EasyStep(
                    customStep: _buildStepIcon(
                        'assets/icons/cv_process.svg', activeStep >= 0),
                    customTitle:
                        _buildStepTitle('CV Screening', activeStep >= 0),
                  ),
                  EasyStep(
                    customStep: _buildStepIcon(
                        'assets/icons/ai_active.svg', activeStep >= 1),
                    customTitle: _buildStepTitle('Interview', activeStep >= 1),
                  ),
                  EasyStep(
                    customStep: _buildStepIcon(
                        'assets/icons/project_process.svg', activeStep >= 2),
                    customTitle: _buildStepTitle('Offer', activeStep >= 2),
                  ),
                ],
              ),
              Expanded(
                child: getStepContent(activeStep),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStepIcon(String assetPath, bool isActive) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? primaryColor : lightGreyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          isActive ? assetPath : assetPath,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildStepTitle(String title, bool isActive) {
    return Text(
      title,
      style: TextStyle(color: isActive ? primaryColor : Colors.grey),
      textAlign: TextAlign.center,
    );
  }

  Widget getStepContent(int step) {
    switch (step) {
      case 0:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                final file = controller.pickedFile.value;
                return file == null
                    ? Container(
                        width: double.infinity,
                        height: 244,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: greyColor,
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
                                controller.setPickedFile(file);
                              },
                              child: Image.asset('assets/images/upload_cv.png'),
                            ),
                            CustomText.h2_grey('Upload your CV here'),
                          ],
                        ),
                      )
                    : ElevatedButton(
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
                        child: Column(
                          children: [
                            Text('Lihat CV'),
                            SizedBox(height: 8),
                            Text(
                                'Size: ${(file.lengthSync() / 1024).toStringAsFixed(2)} KB'),
                          ],
                        ),
                      );
              }),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (controller.pickedFile.value != null) {
                    controller.activeStep++;
                  } else {
                    Get.snackbar(
                      'Error',
                      'Please select a CV first',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
                child: Text('Next'),
              ),
            ],
          ),
        );
      case 1:
        return Column(
          children: [
            Text('AI Interview'),
            ElevatedButton(
              onPressed: () {
                controller.activeStep++;
              },
              child: Text('Next'),
            ),
          ],
        );
      case 2:
        return Column(
          children: [
            Text('Project Simulation'),
            ElevatedButton(
              onPressed: () {
                controller.activeStep++;
              },
              child: Text('Next'),
            ),
          ],
        );
      default:
        return Center(child: Text('Unknown Step'));
    }
  }
}

class PDFViewPage extends StatelessWidget {
  final File file;

  PDFViewPage({required this.file});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        surfaceTintColor: whiteColor,
        backgroundColor: whiteColor,
        title: Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: file.path,
      ),
    );
  }
}
