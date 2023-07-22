import 'package:get/get.dart';

import 'controller.dart';

class AdvertiseThirdBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiseThirdController>(() => AdvertiseThirdController());
  }
}
