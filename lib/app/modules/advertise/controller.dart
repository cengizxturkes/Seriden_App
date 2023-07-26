import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/category/category_response.dart';
import 'package:getx_skeleton/app/data/models/category/category_sub_responce.dart';
import 'package:getx_skeleton/app/repositories/category_repository.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:logger/logger.dart';

import '../../data/models/category.dart';
import '../../repositories/category_sub_items_repository.dart';
import '../../repositories/advertise_repository.dart';
import 'index.dart';

class AdvertiseController extends GetxController
    with CategorySubItemsRepository {
  AdvertiseController();

  final state = AdvertiseState();
  AdvertiseRepository advertiseService = Get.find();
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

  void onSelectCategory(Subcategory category) {
    Logger().i(category.name);
    advertiseService.setCategory(category);
    Get.toNamed(Routes.ADVERTISEFIRSTPAGE);

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
