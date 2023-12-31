import 'package:get/get.dart';

import '../../data/local/my_hive.dart';
import '../../data/models/login_response/login_response.dart';
import '../../repositories/my_adv_repository.dart';
import 'index.dart';

class PostingOnAirController extends GetxController with MyAdveriseRepository {
  PostingOnAirController();

  final state = PostingOnAirState();
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
