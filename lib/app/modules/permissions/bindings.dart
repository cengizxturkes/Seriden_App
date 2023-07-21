import 'package:get/get.dart';

import 'controller.dart';

class PermissionsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PermissionsController>(() => PermissionsController());
  }
}
