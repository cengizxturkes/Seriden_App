import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../../services/advertise_service.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class PaymentPage extends GetView<PaymentController> {
  PaymentPage({Key? key}) : super(key: key);
  AdvertiseService advertiseService = Get.find();

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(
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
                    createTextBox(
                        "Ödeme Bilgileri", advertiseService.CardNumber),
                    createTextBox("", advertiseService.CardNameSurname),
                    createTextBox("", advertiseService.LastUseTime),
                    createTextBox("", advertiseService.CvCs),
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.PAYMENTPAGE,
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
                              "DEVAM ET 4/4",
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
        obscureText: true,
        initialValue: "Kart Numarası",
      ),
    ],
  );
}
