import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/models/login_model/login_model.dart';
import '../services/login_service.dart';

class LoginEmailRepository {
  LoginEmailModel loginModel = LoginEmailModel();
  LoginService service = Get.find();

  void email(String email) {
    loginModel.email = email;
  }

  void addPass(String password) {
    loginModel.pass = password;
  }

  Future<bool> save() async {
    var deneme = LoginModel(
      email: loginModel.email,
      password: loginModel.pass,
    );
    var response = await service.loginwithemail(deneme);
    print("kullanıcı" + loginModel.email + "Giriş Yapıldı");

    return response.status == 1;
  }
}

class LoginEmailModel {
  String email = "";
  String pass = "";
}
