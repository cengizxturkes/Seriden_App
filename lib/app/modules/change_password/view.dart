import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../repositories/password_repository.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class ChangePasswordPage extends GetView<ChangePasswordController> {
  ChangePasswordPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangePasswordController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          bottomNavigationBar: BottomNavbar(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                AppBarConst(),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      BlueTextProfile(
                        title: "Şifre Değişikliği",
                      ),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      createTextBox("Mevcut Şifre", Icon(Icons.visibility),
                          controller.setOld, controller.model.oldpass),
                      SizedBox(
                        height: 15.h,
                      ),
                      createTextBox("Yeni Şifre", Icon(Icons.visibility_off),
                          controller.setNew, controller.model.newpass),
                      SizedBox(
                        height: 15.h,
                      ),
                      createTextBox(
                          "Yeni Şifre",
                          Icon(Icons.visibility_off),
                          controller.setNewagain,
                          controller.model.newpassagain),
                      SizedBox(
                        height: 50.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.save();
                        },
                        child: Container(
                            height: 40.h,
                            width: 315.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: Color(0xff0075FF)),
                            child: Center(
                              child: Text(
                                "KAYDET",
                                style: TextStyle(
                                  fontSize: 15.h,
                                  color: Colors.white,
                                  fontFamily: "Gilroy",
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                            height: 40.h,
                            width: 315.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "VAZGEÇ",
                                style: TextStyle(
                                  fontSize: 15.h,
                                  color: Color(0xff0075FF),
                                  fontFamily: "Gilroy",
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}

Widget createTextBox(
    String title, Icon icon, Function(String value) textChange, String value) {
  var controller = TextEditingController(text: value);
  controller.addListener(() {
    textChange(controller.text);
  });
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 5.h),
      TextFormField(
        decoration: InputDecoration(
          labelText: title,
          suffixIcon: icon,
        ),
        controller: controller,
      ),
      SizedBox(
        height: 20.h,
      ),
    ],
  );
}
