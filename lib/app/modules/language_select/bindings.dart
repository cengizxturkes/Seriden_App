import 'package:get/get.dart';

import 'controller.dart';

class LanguageSelectBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguageSelectController>(() => LanguageSelectController());
  }
}
