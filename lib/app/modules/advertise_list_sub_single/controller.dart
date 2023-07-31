import 'package:get/get.dart';

import '../../data/models/get_advertise/advertise_reponse.dart';
import '../../repositories/user_repository.dart';
import 'index.dart';

class AdvetiseLastController extends GetxController with UserRepository {
  AdvetiseLastController();
  final state = AdvetiseLastState();
  static GetAdvertise? lastAdvertice;
  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
