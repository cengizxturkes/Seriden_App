import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/components/custom_snackbar.dart';
import 'package:getx_skeleton/app/services/user_service.dart';

import '../data/local/my_hive.dart';
import '../data/models/password_post_model/password_post_model.dart';
import '../modules/constwidget/blue_text_profile.dart';

class PasswordRepository {
  UserService service = Get.find();
  PasswordModel model = PasswordModel();
  void setOld(String oldpass) {
    model.oldpass = oldpass;
  }

  void setNew(String newpass) {
    model.newpass = newpass;
  }

  void setNewagain(String setnew) {
    model.newpassagain = setnew;
  }

  Future<bool> save() async {
    var login = await MyHive.getCurrentUser();

    var deneme = PasswordPostModel(
        id: int.parse(login!.id),
        newpass: model.newpass,
        oldpass: model.oldpass);
    var response = await service.uptadePass(deneme);
    var success = response.status == 1;
    if (!success) {
      CustomSnackBar.showCustomErrorToast(message: response.message);
    } else {
      showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return new AlertDialog(
            content: new Container(
              width: 315.w,
              height: 250.h,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      new CloseButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  Center(
                    child: Image.asset(
                        "assets/images/icon-park-solid_success.png"),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: BlackTextProfile(
                        title: "Şifreniz Başarı ile değiştirildi"),
                  )
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          );
        },
      );
    }
    return success;
  }
}

class PasswordModel {
  String oldpass = "";
  String newpass = "";
  String newpassagain = "";
}
