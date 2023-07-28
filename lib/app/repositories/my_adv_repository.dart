import 'dart:math';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/local/my_hive.dart';
import '../data/models/my_advertise/my_advertise_response.dart';
import '../services/advertise_service_pm.dart';

class MyAdveriseRepository {
  AdvertiseServicePm service = Get.find();
  Future<List<MyAdverise>> getMyAdv() async {
    var login = await MyHive.getCurrentUser();
    var response = await service.getMyAdv(login?.id ?? "");
    return response.data;
  }
}
