import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../repositories/advertise_repository.dart';
import 'image_helper.dart';
import 'index.dart';

class AdvertiseSecondController extends GetxController {
  AdvertiseSecondController();
  final imageHelper = Get.put(ImageHelper());
  final state = AdvertiseSecondState();
  List<File> image = [];

  final selectedFiles = <XFile>[].obs;

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

  Future post() async {
    image = selectedFiles.map((element) => File(element.path)).toList();
    AdvertiseRepositorys.instance.setImages(image);
  }
}
