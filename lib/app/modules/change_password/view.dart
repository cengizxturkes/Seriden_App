import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class ChangePasswordPage extends GetView<ChangePasswordController> {
  const ChangePasswordPage({Key? key}) : super(key: key);

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
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: "Mevcut Şifre",
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: "Yeni Şifre",
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: "Yeni Şifre Tekrar",
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                content: new Container(
                                  width: 315.w,
                                  height: 250.h,
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                            title:
                                                "Şifreniz Başarı ile değiştirildi"),
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
