import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/advertise_service.dart';

import '../../components/color_manager.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertiseFirstPage extends GetView<AdvertiseFirstController> {
  AdvertiseFirstPage({Key? key}) : super(key: key);
  AdvertiseService advertiseService = Get.find();

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdvertiseFirstController>(
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
                    createTextBox("ilan başlığı", advertiseService.setTitle),
                    createTextBox("Açıklama", advertiseService.setDescription),
                    createTextBox("Fiyat", advertiseService.setPrice),
                    createTextBox("Cinsiyet", advertiseService.setPrice),
                    createTextBox("Konum", advertiseService.setPrice),
                  ],
                ),
              )
            ]),
          )),
        );
      },
    );
  }

  Widget createTextBox(String title, Function(String value) textChange) {
    var controller = TextEditingController();
    controller.addListener(() {
      textChange(controller.text);
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlueTextProfile(
          title: title,
        ),
        SizedBox(height: 5.h),
        TextFormField(
          controller: controller,
        ),
        SizedBox(
          height: 20.h,
        ),
         GestureDetector(
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
      ],
    );
  }
}
