import 'package:get/get.dart';

import '../../../../presentation/projectDetails/controllers/project_details.controller.dart';

class ProjectDetailsControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectDetailsController>(
      () => ProjectDetailsController(),
    );
  }
}
