import 'dart:math';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/local/my_hive.dart';
import '../data/models/get_advertise/advertise_reponse.dart';
import '../data/models/my_advertise/my_adv_passive_response.dart';
import '../data/models/my_advertise/my_advertise_response.dart';
import '../services/advertise_service_pm.dart';

class MyAdveriseRepository {
  AdvertiseServicePm service = Get.find();
  Future<List<MyAdverise>> getMyAdv() async {
    var login = await MyHive.getCurrentUser();
    var response = await service.getMyAdv(login?.id ?? "");
    return response.data;
  }

  Future<List<GetAdvertise>> getAdvetiseBySub(String id) async {
    var response = await service.getAdvByCategory(id);
    return response.data ?? [];
  }

  Future<List<MyAdverisePassive>> getMyAdvPassive() async {
    var login = await MyHive.getCurrentUser();
    var response = await service.getMyAdvPassive(login?.id ?? "");
    return response.data;
  }
}
