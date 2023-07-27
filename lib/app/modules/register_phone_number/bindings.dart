import 'package:get/get.dart';

import 'controller.dart';

class RegisterPhoneNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPhoneNumberController>(() => RegisterPhoneNumberController());
  }
}
