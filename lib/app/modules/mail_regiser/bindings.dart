import 'package:get/get.dart';

import 'controller.dart';

class MailRegiserBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MailRegiserController>(() => MailRegiserController());
  }
}
