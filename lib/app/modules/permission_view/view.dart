import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class PermissionViewPage extends GetView<PermissionViewController> {
  const PermissionViewPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    int argument;
    bool isSwitched = false;

    if (Get.arguments != null) {
      argument = Get.arguments as int;
    } else {
      argument = 0;
    }
    return GetBuilder<PermissionViewController>(
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
                        title: argument == 0
                            ? "Mesaj Okundu Bilgisi"
                            : "Mobil Bildirim İzni",
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                          height: argument == 0 ? 158.h : 80.h,
                          width: 315.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.w, top: 15.h),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: BlackTextProfileEmail(
                                          title: argument == 0
                                              ? "Mesaj Okundu Bilgisi"
                                              : "Mobil Bildirim İzni"),
                                    ),
                                    Spacer(),
                                    Expanded(
                                      child: Switch(
                                        value: isSwitched,
                                        onChanged: (value) {
                                          isSwitched = value;
                                          controller.update();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.w, right: 15.w),
                                  child: BlackTextProfileEmail(
                                      title: argument == 0
                                          ? "Mesaj okundu bilgisi açık olan kişiler, birbiriyle mesajlaşırken, mesajlarının okunup okunmadığını görebilirler. Eğer mesajlaştığınız kişiye bu bilginin gitmesini istemiyorsanız, bu ayarı kapatabilirsiniz. Bu ayarı kapatırsanız, siz de göndermiş olduğunuz mesajların okunma bilgisini göremezsiniz."
                                          : ""),
                                ),
                              ),
                            ],
                          )),
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
