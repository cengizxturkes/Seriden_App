import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/sub_category/sub_category_prop_response.dart';
import 'package:getx_skeleton/app/repositories/advertise_repository.dart';

import '../../repositories/category_sub_items_repository.dart';
import 'index.dart';

class AdvertiseFirstController extends GetxController
    with CategorySubItemsRepository {
  AdvertiseFirstController();
  TextEditingController textcontroller = TextEditingController();
  final ValueNotifier<String> idNotifier = ValueNotifier("");
  var data = props;
  static RxList<SubcategoryProp> props = RxList.empty();
  final state = AdvertiseFirstState();
  static String lastId = "";
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

  Future<void> load(String id) async {
    if (lastId == id) return;
    if (props.isNotEmpty) return;
    props.clear();
    var response = await getCategoriesProp(id);
    props.addAll(response);
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    props.clear();
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    props.clear();
    super.dispose();
  }
}
