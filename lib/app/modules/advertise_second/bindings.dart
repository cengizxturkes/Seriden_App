import 'package:get/get.dart';

import 'controller.dart';

class AdvertiseSecondBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiseSecondController>(() => AdvertiseSecondController());
  }
}
