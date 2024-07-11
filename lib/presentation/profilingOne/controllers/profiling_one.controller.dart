import 'package:get/get.dart';

class ProfilingOneController extends GetxController {
  var isCheckedOne = false.obs;
  var isCheckedTwo = false.obs;
  var isCheckedThree = false.obs;

  void toggleCheckOne() {
    isCheckedOne.value = !isCheckedOne.value;
  }

  void toggleCheckTwo() {
    isCheckedTwo.value = !isCheckedTwo.value;
  }

  void toggleCheckThree() {
    isCheckedThree.value = !isCheckedThree.value;
  }
}
