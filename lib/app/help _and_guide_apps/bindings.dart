import 'package:get/get.dart';

import 'controller.dart';

class HelpAndGuideAppsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpAndGuideAppsController>(() => HelpAndGuideAppsController());
  }
}
