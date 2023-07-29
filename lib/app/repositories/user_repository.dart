import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/services/user_service.dart';

import '../data/local/my_hive.dart';
import '../data/models/login_response/login_response.dart';
import '../data/models/message/message_detail_response.dart';
import '../data/models/message/message_response.dart';
import '../data/models/user/user_response.dart';

class UserRepository {
  UserService service = Get.find();
  List<MessagDetail> messages = [];
  final formData = FormData({
    'name_surname': 'value1',
    'phone': 'value2',
    'id': '',
    'image': "",
  });

  Future<User> getUser() async {
    var login = await MyHive.getCurrentUser();

    var response = await service.getUser(login?.id ?? "");
    return response.data;
  }

  Future<List<Message>> getMessage() async {
    var login = await MyHive.getCurrentUser();

    var response = await service.getMessage(login?.id ?? "");
    return response.data;
  }

  Future<List<MessagDetail>> getMessageDetail(String messageid) async {
    var response = await service.getMessageDetail(messageid);
    messages = response.data;
    return response.data;
  }

  Future<List<MessagDetail>> uptadeProfile(String messageid) async {
    var response = await service.getMessageDetail(messageid);
    messages = response.data;
    return response.data;
  }

  Future<bool> updateUser(Login user) async {
    MyHive.saveUserToHive(user);

    return user.status == 1;
  }
}

class UptadeProfile {
  String? name_surname = "";
  String phone = "";
  String id = "";
  String image = "";
}
