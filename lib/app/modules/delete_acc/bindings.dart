import 'package:get/get.dart';

import 'controller.dart';

class DeleteAccBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeleteAccController>(() => DeleteAccController());
  }
}
