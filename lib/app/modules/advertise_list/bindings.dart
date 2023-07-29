import 'package:get/get.dart';

import 'controller.dart';

class AdvertiseListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiseListController>(() => AdvertiseListController());
  }
}
