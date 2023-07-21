import 'package:get/get.dart';

import 'controller.dart';

class PermissionViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PermissionViewController>(() => PermissionViewController());
  }
}
