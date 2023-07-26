import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';
import 'package:getx_skeleton/app/modules/constwidget/profile_gray_text.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../components/color_manager.dart';
import '../../repositories/advertise_repository.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvetiseLastPage extends GetView<AdvetiseLastController> {
  AdvetiseLastPage({Key? key}) : super(key: key);
  AdvertiseRepository advertiseService = Get.find();
  NewAdvertiseModel advertisemodel = Get.find();

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdvetiseLastController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: ColorManager.base20,
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
                    BlackTextProfile(title: advertisemodel.title),
                    Center(
                      child: Carousel(
                        indicatorBarColor: Colors.transparent,
                        activateIndicatorColor: Colors.black,
                        animationPageCurve: Curves.bounceInOut,
                        indicatorHeight: 5.h,
                        indicatorWidth: 5.w,
                        height: 150.h,
                        width: 150.w,
                        items: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: Colors.yellow,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    BlueTextProfile(title: "Direksiyon Dersi İlan Bilgileri"),
                    SizedBox(
                      height: 20.h,
                    ),
                    LastCheckAdvise(
                      title: "Fiyat",
                      desc: "500Tl",
                    ),
                    Divider(),
                    SizedBox(
                      height: 20.h,
                    ),
                    LastCheckAdvise(
                      title: "Özel Direksiyon Dersi Manuel",
                      desc: "",
                    ),
                    Divider(),
                    SizedBox(
                      height: 20.h,
                    ),
                    LastCheckAdvise(
                      title: "Kadın/Erkek",
                      desc: "",
                    ),
                    Divider(),
                    SizedBox(
                      height: 20.h,
                    ),
                    LastCheckAdvise(
                      title: "Ankara Keçiören",
                      desc: "Cengizhan Mehmet Türkeş",
                    ),
                    Divider(),
                    SizedBox(
                      height: 20.h,
                    ),
                    LastCheckAdvise(
                      title: "İlan Tarihi",
                      desc: "20.07.2023",
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Container(
                          height: 40.h,
                          width: 315.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Color(0xff0075FF)),
                          child: Center(
                            child: Text(
                              "BİTİR",
                              style: TextStyle(
                                fontSize: 15.h,
                                color: Colors.white,
                                fontFamily: "Gilroy",
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ]),
          )),
        );
      },
    );
  }
}

class LastCheckAdvise extends StatelessWidget {
  final String title;
  final String desc;

  const LastCheckAdvise({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: BlackTextProfile(title: title)),
        BlueTextProfile(title: desc),
      ],
    );
  }
}
