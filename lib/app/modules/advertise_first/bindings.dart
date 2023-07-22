import 'package:get/get.dart';

import 'controller.dart';

class AdvertiseFirstBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiseFirstController>(() => AdvertiseFirstController());
  }
}
