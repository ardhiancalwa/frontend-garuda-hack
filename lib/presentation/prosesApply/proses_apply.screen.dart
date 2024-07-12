import 'dart:io';

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/infrastructure/theme/colors.dart';
import 'package:frontend/infrastructure/theme/text_component.dart';
import 'package:frontend/presentation/prosesApply/widgets/cases/caseOne.dart';
import 'package:frontend/presentation/prosesApply/widgets/cases/caseZero.dart';

import 'package:get/get.dart';
import 'package:share/share.dart';

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
                finishedStepIconColor: whiteColor,
                finishedStepBorderColor: whiteColor,
                lineStyle: LineStyle(
                  activeLineColor: lightGreyColor,
                  finishedLineColor: lightGreyColor,
                  defaultLineColor: lightGreyColor,
                  unreachedLineColor: lightGreyColor,
                  lineType: LineType.dashed,
                  lineSpace: 5,
                  lineLength: 75,
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
                        'assets/icons/ai_new2.svg', activeStep >= 1),
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
        color: isActive ? primaryColor : backgroundBorder,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgPicture.asset(
          isActive ? assetPath : assetPath,
          color: Color(0xffBEBEBE),
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
        return CaseZero(controller: controller);
      case 1:
        return CaseOne(controller: controller);
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
        elevation: 0,
        surfaceTintColor: whiteColor,
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: CustomText.h2('PDF Viewer'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {
              Share.shareFiles([file.path], text: 'Check out this PDF!');
            },
          ),
        ],
      ),
      body: PDFView(
        filePath: file.path,
      ),
    );
  }
}
