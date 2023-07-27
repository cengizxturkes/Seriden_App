import 'package:get/get.dart';

import 'controller.dart';

class RegisterUserGoogleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterUserGoogleController>(() => RegisterUserGoogleController());
  }
}
