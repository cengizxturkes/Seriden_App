import 'package:get/get.dart';

import 'controller.dart';

class LoginEmailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginEmailController>(() => LoginEmailController());
  }
}
