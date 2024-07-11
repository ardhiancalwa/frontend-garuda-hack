import 'package:get/get.dart';

import '../../../../presentation/profilingTwo/controllers/profiling_two.controller.dart';

class ProfilingTwoControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilingTwoController>(
      () => ProfilingTwoController(),
    );
  }
}
