import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/models/my_advertise/my_advertise_response.dart';
import '../services/advertise_service_pm.dart';

class MyAdveriseRepository {
  AdvertiseServicePm service = Get.find();
  Future<List<MyAdverise>> getMyAdv() async {
    var response = await service.getMyAdv();
    return response.data;
  }
}
