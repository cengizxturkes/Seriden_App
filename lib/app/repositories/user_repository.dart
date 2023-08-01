import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/data/models/update_profile/update_user_model.dart';
import 'package:getx_skeleton/app/services/user_service.dart';

import '../data/local/my_hive.dart';
import '../data/models/add_favorite/add_favorite_post.dart';
import '../data/models/login_response/login_response.dart';
import '../data/models/message/message_detail_response.dart';
import '../data/models/message/message_response.dart';
import '../data/models/user/acc_delete_response.dart';
import '../data/models/user/user_response.dart';

class UserRepository {
  UserService service = Get.find();
  List<MessageDetail> messages = [];
  final formData = FormData({
    'name_surname': 'value1',
    'phone': 'value2',
    'id': '',
    'image': "",
  });

  //  image(File value) {
  //   UpdateUserModel.photo = value;
  // }

  Future<User> getUser() async {
    var login = await MyHive.getCurrentUser();

    var response = await service.getUser(login?.id ?? "");
    return response.data;
  }

  Future<List<Message>> getMessage() async {
    var login = await MyHive.getCurrentUser();

    try {
      var response = await service.getMessage(login?.id ?? "");
      return response.data;
    } catch (e) {
      return [];
    }
  }

  Future<List<MessageDetail>> getMessageDetail(String messageid) async {
    var response = await service.getMessageDetail(messageid);
    messages = response.data;
    return response.data;
  }

  Future<String> addFavorite(AddFavoritePost userModel) async {
    var response = await service.addFavorite(userModel);
    return response.message;
  }

  Future<String> deleteUser(String id) async {
    var response = await service.deleteUser(id);
    return response.message;
  }

  Future<String> deleteAdv(String id) async {
    var response = await service.deleteAdv(id);
    return response.message;
  }

  Future<String> deleteFavorite(String id) async {
    var response = await service.deleteFavorite(id);
    return response.message;
  }

  Future<String> uptadedProfile(UpdateUserModel userModel) async {
    var response = await service.updateUser(userModel);
    return response.message;
  }

  // Future<bool> deleteProfile(String id) async {
  //   var response = await service.deleteUser(id);

  //   return response.status == 1;
  // }

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
