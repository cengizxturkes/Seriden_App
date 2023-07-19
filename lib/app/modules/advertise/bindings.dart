import 'package:get/get.dart';

import 'controller.dart';

class AdvertiseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiseController>(() => AdvertiseController());
  }
}
