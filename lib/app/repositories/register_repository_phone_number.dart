import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/models/register_post_model/register_post_model.dart';
import '../services/register_service.dart';

class RegirterPhoneNumberRepository {
  NewRegisterPhoneModel newRegisterPhoneModel = NewRegisterPhoneModel();
  RegisterService service = Get.find();

  void phoneNumber(String phone) {
    newRegisterPhoneModel.phone_number = phone;
  }

  void addnameSurname(String name) {
    newRegisterPhoneModel.phone_number = name;
  }

  void addPass(String password) {
    newRegisterPhoneModel.pass = password;
  }

  Future<bool> save() async {
    var deneme = RegisterPostModel(
      mail: 'turkes2214@gmail.com',
      name: newRegisterPhoneModel.name,
      password: newRegisterPhoneModel.pass,
      phone: newRegisterPhoneModel.phone_number,
      surname: newRegisterPhoneModel.name,
      token: "",
    );
    var response = await service.register(deneme);
    return response.status == 1;
  }
}

class NewRegisterPhoneModel {
  String phone_number = "";
  String name = "";
  String pass = "";
}
