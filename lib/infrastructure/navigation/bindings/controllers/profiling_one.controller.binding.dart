import 'package:get/get.dart';

import '../../../../presentation/profilingOne/controllers/profiling_one.controller.dart';

class ProfilingOneControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilingOneController>(
      () => ProfilingOneController(),
    );
  }
}
