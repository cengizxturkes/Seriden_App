import 'package:get/get.dart';

import 'controller.dart';

class ProblemSuggestionNotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProblemSuggestionNotificationController>(() => ProblemSuggestionNotificationController());
  }
}
