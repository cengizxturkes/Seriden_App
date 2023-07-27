import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/color_manager.dart';
import '../../repositories/login_repository.dart';
import '../constwidget/blue_text_profile.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class LoginEmailPage extends GetView<LoginEmailController> {
  LoginEmailPage({Key? key}) : super(key: key);
  LoginEmailRepository loginPhoneNumberRepository = LoginEmailRepository();
  // 主视图

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginEmailController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SERİDEN",
                      style: GoogleFonts.galindo(
                          fontSize: 40.h, color: Color(0xff4B4F52))),
                  SizedBox(
                    height: 5.h,
                  ),
                  createTextBox("Email", loginPhoneNumberRepository.email,
                      loginPhoneNumberRepository.loginModel.email),
                  SizedBox(
                    height: 79.h,
                  ),
                  createTextBox("Şifre", loginPhoneNumberRepository.addPass,
                      loginPhoneNumberRepository.loginModel.pass as String),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (await loginPhoneNumberRepository.save()) {
                        Get.toNamed(Routes.HOME);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 2, color: Color(0xff0075FF))),
                      height: 50.h,
                      width: 315.w,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Giriş Yap",
                                  style: TextStyle(
                                    color: Color(0xff0075FF),
                                    fontSize: 15,
                                    fontFamily: "Gilroy",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          )),
        );
      },
    );
  }
}

Widget createTextBox(
    String title, Function(String value) textChange, String value) {
  var controller = TextEditingController(text: value);
  controller.addListener(() {
    textChange(controller.text);
  });
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: title,
        ),
      ),
    ],
  );
}
