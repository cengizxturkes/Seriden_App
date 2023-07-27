import 'package:get/get.dart';

import 'controller.dart';

class CreateAccWithPhoneNumberBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAccWithPhoneNumberController>(() => CreateAccWithPhoneNumberController());
  }
}
