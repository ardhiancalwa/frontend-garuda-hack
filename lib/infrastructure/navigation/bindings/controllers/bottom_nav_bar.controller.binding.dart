import 'package:get/get.dart';

import '../../../../presentation/bottomNavBar/controllers/bottom_nav_bar.controller.dart';

class BottomNavBarControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavBarController>(
      () => BottomNavBarController(),
    );
  }
}
