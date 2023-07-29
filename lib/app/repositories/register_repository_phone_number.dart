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

  void mail(String mail) {
    newRegisterPhoneModel.mail = mail;
  }

  void addnameSurname(String name) {
    newRegisterPhoneModel.name = name;
  }

  void addPass(String password) {
    newRegisterPhoneModel.pass = password;
  }

  Future<bool> save() async {
    var deneme = RegisterPostModel(
      mail: newRegisterPhoneModel.mail,
      nameSurname: newRegisterPhoneModel.name,
      password: newRegisterPhoneModel.pass,
      phone: newRegisterPhoneModel.phone_number,
    );
    var response = await service.register(deneme);
    return response.status == 1;
  }
}

class NewRegisterPhoneModel {
  String phone_number = "";
  String name = "";
  String pass = "";
  String mail = "";
}
