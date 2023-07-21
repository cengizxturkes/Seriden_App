import 'package:get/get.dart';

import 'controller.dart';

class PostingOnAirBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostingOnAirController>(() => PostingOnAirController());
  }
}
