import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/category_service.dart';
import 'package:getx_skeleton/app/services/category_sub_items_service.dart';

import 'advertise_service.dart';
import 'base_client.dart';

class ApiServiceInit {
  ApiServiceInit._();
  static Future<void> init() async {
    Get.put(AdvertiseService());
    await Get.putAsync<CategoryService>(
        () async => CategoryService(BaseClient.dio));
    await Get.putAsync<CategorySubItemsService>(
        () async => CategorySubItemsService(BaseClient.dio));
  }
}
