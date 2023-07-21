import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class ChangeNumberWithEmailPagePage
    extends GetView<ChangeNumberWithEmailPageController> {
  const ChangeNumberWithEmailPagePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    int argument;

    if (Get.arguments != null) {
      argument = Get.arguments as int;
    } else {
      argument = 0;
    }
    String text;
    text = "";
    if (argument == 0) {
      text =
          "Güvenliğiniz için öncelikle seridenayse@gmail.com adresine gönderdiğimiz onay kodunu girin.";
    } else if (argument == 1) {
      text =
          "Güvenliğiniz için öncelikle seridenayse@gmail.com adresine gönderdiğimiz onay kodunu girin.";
    } else if (argument == 2) {
      text =
          "Güvenliğiniz için 0555 222 33 66 numaranıza gönderdiğimiz onay kodunu girin.";
    }
    return GetBuilder<ChangeNumberWithEmailPageController>(
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
                      height: 20.h,
                    ),
                    BlueTextProfile(
                      title: "Numaranı Değiştir",
                    ),
                    Divider(),
                    SizedBox(height: 20.h),
                    BlackTextProfile(title: text),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        height: 100.w,
                        width: 100.h,
                        child: Center(
                            child: Image.asset(
                                "assets/images/ion_time-outline.png"))),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        '${controller.countdown ~/ 60}:${controller.countdown % 60}',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontFamily: "Gilroy"),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(child: BlueTextProfile(title: "Onay Kodu")),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.code,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.NEWPHONENUMBER,
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
                              "GÖNDER",
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
