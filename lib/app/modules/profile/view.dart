import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/posting_on_air/index.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../../config/theme/my_fonts.dart';
import '../constwidget/blue_text_profile.dart';
import '../constwidget/profile_gray_text.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: Color(0xffF2F2F2),
          body: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
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
                          title: "İLAN YÖNETİMİ",
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.POSTINGONAIR);
                          },
                          child: ProfileGrayText(
                            title: "Yayında Olanlar",
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Divider(),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.UNPUBLISHEDADVERTICE);
                          },
                          child: ProfileGrayText(
                            title: "Yayında Olmayanlar",
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Divider(),
                        BlueTextProfile(
                          title: "HESABIM",
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.ACCOUNTINFO);
                          },
                          child: ProfileGrayText(
                            title: "Hesap Bilgilerim",
                          ),
                        ),
                        Divider(),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PERMISSIONS);
                          },
                          child: ProfileGrayText(
                            title: "İzinlerim",
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Divider(),
                        SizedBox(
                          height: 15.h,
                        ),
                        BlueTextProfile(
                          title: "DİĞER",
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.HELPANDGUIDEAPPS);
                          },
                          child: ProfileGrayText(
                            title: "Yardım Ve Rehber Uygulamalar",
                          ),
                        ),
                        Divider(),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PROBLEMSUGGESTIONNOTIFICATION);
                          },
                          child: ProfileGrayText(
                            title: "Sorun-Öneri Bildirimi",
                          ),
                        ),
                        Divider(),
                        SizedBox(
                          height: 15.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.LANGUAGESELECT);
                          },
                          child: ProfileGrayText(
                            title: "Dil Tercihi",
                          ),
                        ),
                        Divider(),
                        SizedBox(
                          height: 15.h,
                        ),
                        ProfileGrayText(
                          title: "Hakkında",
                        ),
                        Divider(),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 120, right: 60),
                          child: Row(
                            children: [
                              Text("ÇIKIŞ YAP",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: "Gilroy",
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                width: 15.w,
                              ),
                              Icon(
                                Icons.logout,
                                color: Colors.red,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
