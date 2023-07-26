import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/sign_up/widgets/LoginButtonWidget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/color_manager.dart';
import '../../../modules/home/views/home_view.dart';
import '../../../routes/app_pages.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class SignUpPage extends GetView<SignUpController> {
  SignUpPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  List<LoginMethod> method = [
    LoginMethod(
        "Google İle Bağlan", "assets/images/flat-color-icons_google.png", 0),
    LoginMethod("Telefon Numarası ile Üye Ol",
        "assets/images/fluent-emoji-flat_telephone-receiver (1).png", 1),
    LoginMethod(
        "E-posta ile Üye Ol", "assets/images/logos_google-gmail.png", 2),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Text("SERİDEN",
                    style: GoogleFonts.galindo(
                        fontSize: 40.h, color: Color(0xff4B4F52))),
                SizedBox(
                  height: 100.h,
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var item = method[index];

                    return GestureDetector(
                      onTap: () {
                        controller.selectedMethodIndex.value = index;
                        controller.selectedMethodIndex.update((val) {});
                        var index2 = controller.selectedMethodIndex;
                        if (controller.selectedMethodIndex == 0) {
                          Get.toNamed(Routes.REGISTERUSERGOOGLE);
                        } else if (controller.selectedMethodIndex == 1) {
                          Get.toNamed(Routes.REGISTERPHONENUMBER);
                          // } else if (controller.selectedMethodIndex == 2) {
                          //   Get.toNamed(Routes.EMAILSIGNUP);
                          // }
                        }
                      },
                      child: LoginButtonWidget(
                        iconpath: item.iconpath,
                        title: item.title,
                      ),
                    );
                  },
                )
              ])),
        );
      },
    );
  }
}

class LoginMethod {
  final String title;
  final String iconpath;
  int methodType = 0;

  LoginMethod(this.title, this.iconpath, this.methodType);
}
