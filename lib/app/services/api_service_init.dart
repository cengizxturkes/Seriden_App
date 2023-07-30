import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/login_response/login_response.dart';
import 'package:getx_skeleton/app/data/models/user/user_response.dart';
import 'package:getx_skeleton/app/services/advertise_service_pm.dart';
import 'package:getx_skeleton/app/services/category_service.dart';
import 'package:getx_skeleton/app/services/category_sub_items_service.dart';
import 'package:getx_skeleton/app/services/favorite_service.dart';
import 'package:getx_skeleton/app/services/login_service.dart';
import 'package:getx_skeleton/app/services/register_service.dart';
import 'package:getx_skeleton/app/services/user_service.dart';

import '../repositories/advertise_repository.dart';
import '../repositories/register_repository_phone_number.dart';
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

    await Get.putAsync<RegisterService>(
        () async => RegisterService(BaseClient.dio));
    await Get.putAsync<LoginService>(() async => LoginService(BaseClient.dio));
    await Get.putAsync<UserService>(() async => UserService(BaseClient.dio));
    await Get.putAsync<FavoriteService>(
        () async => FavoriteService(BaseClient.dio));
    Get.put(RegirterPhoneNumberRepository());
  }
}
