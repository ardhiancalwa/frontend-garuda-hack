import 'package:get/get.dart';

class ProfilingTwoController extends GetxController {
  var isClickedOne = false.obs;
  var isClickedTwo = false.obs;
  var isClickedThree = false.obs;
  var isClickedFour = false.obs;
  var isClickedFive = false.obs;
  var isClickedSix = false.obs;

  void toggleClickedOne() {
    isClickedOne.value = !isClickedOne.value;
  }

  void toggleClickedTwo() {
    isClickedTwo.value = !isClickedTwo.value;
  }

  void toggleClickedThree() {
    isClickedThree.value = !isClickedThree.value;
  }

  void toggleClickedFour() {
    isClickedFour.value = !isClickedFour.value;
  }

  void toggleClickedFive() {
    isClickedFive.value = !isClickedFive.value;
  }

  void toggleClickedSix() {
    isClickedSix.value = !isClickedSix.value;
  }
}
