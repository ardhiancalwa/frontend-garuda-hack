import 'package:get/get.dart';

import '../../../../presentation/project/controllers/project.controller.dart';

class ProjectControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectController>(
      () => ProjectController(),
    );
  }
}
