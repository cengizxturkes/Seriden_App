import 'package:get/get.dart';

import 'controller.dart';

class PhoneNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneNumberController>(() => PhoneNumberController());
  }
}
