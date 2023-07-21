import 'package:get/get.dart';

import 'controller.dart';

class UnpublishedAdvertiseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnpublishedAdvertiseController>(() => UnpublishedAdvertiseController());
  }
}
