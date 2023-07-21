import 'package:get/get.dart';

import 'controller.dart';

class FavoritesubcategoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoritesubcategoryController>(() => FavoritesubcategoryController());
  }
}
