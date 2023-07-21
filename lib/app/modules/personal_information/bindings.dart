import 'package:get/get.dart';

import 'controller.dart';

class PersonalInformationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PersonalInformationController>(() => PersonalInformationController());
  }
}
