import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:logger/logger.dart';

import '../../data/models/category.dart';
import '../../services/advertise_service.dart';
import 'index.dart';

class AdvertiseController extends GetxController {
  AdvertiseController();

  final state = AdvertiseState();
  AdvertiseService advertiseService = Get.find();
  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  void initCategories() {
    CategoryModel category;

    category = CategoryModel("İş ilanları");
    category.subItems.add(CategoryModel("Asistan Sekreter"));
    category.subItems.add(CategoryModel("Bilgisayar - Yazılım"));
    category.subItems.add(CategoryModel("Eczacı"));
    category.subItems.add(CategoryModel("Eğitim - Öğretmen"));
    category.subItems.add(CategoryModel("Ek İş - Ek Gelir"));
    state.categories.add(category);

    category = CategoryModel("Hizmet verenler");
    category.subItems.add(CategoryModel("Avukat Hukuki Danışma"));
    category.subItems.add(CategoryModel("Bakıcı Hizmetleri"));
    state.categories.add(category);
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    initCategories();
    advertiseService.clear();
    super.onInit();
  }

  void onSelectCategory(CategoryModel category) {
    Logger().i(category.title);
    advertiseService.setCategory(category);
    Get.toNamed(Routes.ADVERTISEFIRSTPAGE, arguments: category);

    //TODO: open next page
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
