import 'package:get/get.dart';

import 'controller.dart';

class ChangeNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeNumberController>(() => ChangeNumberController());
  }
}
