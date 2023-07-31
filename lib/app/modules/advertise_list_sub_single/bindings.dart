import 'package:get/get.dart';

import 'controller.dart';

class AdvetiseLastBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvetiseLastController>(() => AdvetiseLastController());
  }
}
