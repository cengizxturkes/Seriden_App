import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:getx_skeleton/app/data/models/login_response/login_response.dart';

import '../components/custom_snackbar.dart';
import '../data/models/login_model/login_model.dart';
import '../data/models/user/user_response.dart';
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
    if (response.status == 1) {
      MyHive.saveUserToHive(response.data);
    }
    var success = response.status == 1;
    if (!success) {
      CustomSnackBar.showCustomErrorToast(message: response.message);
    }
    return response.status == 1;
  }
}

class LoginEmailModel {
  String email = "";
  String pass = "";
}
