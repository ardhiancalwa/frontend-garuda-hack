import 'dart:io';

import 'package:get/get.dart';

class ProsesApplyController extends GetxController {
  var activeStep = 0.obs;
  var pickedFile = Rx<File?>(null);

  void setActiveStep(int step) {
    activeStep.value = step;
  }

  void setPickedFile(File file) {
    pickedFile.value = file;
  }
}
