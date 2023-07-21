import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/profile_gray_text.dart';

import '../../routes/app_pages.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AccountInfoPage extends GetView<AccountInfoController> {
  const AccountInfoPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AccountInfoController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Color(0xffF2F2F2),
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
                        title: "Hesap Bilgileri",
                      ),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PERSONELINFORMATION);
                          },
                          child: ProfileGrayText(title: "Kişisel Bilgilerim")),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PHONENUMBER);
                          },
                          child: ProfileGrayText(title: "Cep Telefonu")),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(onTap: (){
                        Get.toNamed(Routes.CHANGEPASSWORD);
                      },child: ProfileGrayText(title: "Şifre Değişikliği")),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(onTap: (){
                        Get.toNamed(Routes.DELETEACC);

                      },child: ProfileGrayText(title: "Hesap İptali")),
                      Divider(),
                      SizedBox(
                        height: 15.h,
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
