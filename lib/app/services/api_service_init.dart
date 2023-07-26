import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/advertise_service_pm.dart';
import 'package:getx_skeleton/app/services/category_service.dart';
import 'package:getx_skeleton/app/services/category_sub_items_service.dart';

import '../repositories/advertise_repository.dart';
import 'base_client.dart';

class ApiServiceInit {
  ApiServiceInit._();
  static Future<void> init() async {
    await Get.putAsync<CategoryService>(
        () async => CategoryService(BaseClient.dio));
    await Get.putAsync<CategorySubItemsService>(
        () async => CategorySubItemsService(BaseClient.dio));
    await Get.putAsync<AdvertiseServicePm>(
        () async => AdvertiseServicePm(BaseClient.dio));
    Get.put(AdvertiseRepository());
  }
}