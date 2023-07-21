import 'package:get/get.dart';

import 'controller.dart';

class ChangeNumberWithEmailPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangeNumberWithEmailPageController>(() => ChangeNumberWithEmailPageController());
  }
}
