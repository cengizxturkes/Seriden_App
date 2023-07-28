import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/services/user_service.dart';

import '../data/local/my_hive.dart';
import '../data/models/user/user_response.dart';

class UserRepository {
  UserService service = Get.find();
  Future<User> getUser() async {
    var login = await MyHive.getCurrentUser();

    var response = await service.getUser(login?.id ?? "");
    return response.data;
  }
}
