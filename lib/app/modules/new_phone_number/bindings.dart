import 'package:get/get.dart';

import 'controller.dart';

class NewPhoneNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPhoneNumberController>(() => NewPhoneNumberController());
  }
}
