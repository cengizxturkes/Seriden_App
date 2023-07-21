import 'package:get/get.dart';

import 'controller.dart';

class AccountInfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountInfoController>(() => AccountInfoController());
  }
}
