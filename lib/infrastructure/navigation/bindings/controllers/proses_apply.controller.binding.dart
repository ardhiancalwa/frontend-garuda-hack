import 'package:get/get.dart';

import '../../../../presentation/prosesApply/controllers/proses_apply.controller.dart';

class ProsesApplyControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProsesApplyController>(
      () => ProsesApplyController(),
    );
  }
}
