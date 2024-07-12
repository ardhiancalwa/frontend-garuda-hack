import 'dart:async';

import 'package:get/get.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechController extends GetxController {
  var showColumn1 = true.obs;

  void switchColumn() {
    Timer(Duration(seconds: 2), () {
      showColumn1.value = false;
    });
  }
}
