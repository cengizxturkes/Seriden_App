import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/data/models/favorite/favorite_response.dart';
import 'package:getx_skeleton/app/services/favorite_service.dart';

import '../data/local/my_hive.dart';

class FavoriteRepository {
  FavoriteService service = Get.find();
  Future<List<Favorite>> getFavorities() async {
    var login = await MyHive.getCurrentUser();
    var response = await service.getFavorities(login?.id ?? "");
    return response.data;
  }
}
