import 'package:get/get.dart';

import 'controller.dart';

class AdvertiseListSubBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiseListSubController>(() => AdvertiseListSubController());
  }
}
