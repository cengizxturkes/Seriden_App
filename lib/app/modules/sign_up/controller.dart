import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/login_response/login_response.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../data/local/my_hive.dart';
import 'index.dart';

class SignUpController extends GetxController {
  SignUpController();

  final state = SignUpState();
  final RxInt selectedMethodIndex = 0.obs;
  Login? user;

  void getUser() async {
    var result = await MyHive.getCurrentUser();
    user = result;
    if (user == null) {
      Get.toNamed(Routes.HOME);
    }
    update();
  }

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
    getUser();
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
