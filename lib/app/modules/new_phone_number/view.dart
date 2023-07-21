import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class NewPhoneNumberPage extends GetView<NewPhoneNumberController> {
  const NewPhoneNumberPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewPhoneNumberController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: Color(0xffF2F2F2),
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
                    BlackTextProfile(
                      title:
                          "Yeni cep telefonu numaranıza onaylamanız için onay kodu göndereceğiz.",
                    ),
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
                    BlueTextProfile(
                      title: "Yeni Telefon Numaranız",
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: controller.phonenumbercontroller,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (controller.phonenumbercontroller != "") {}
                      },
                      child: Container(
                          height: 40.h,
                          width: 315.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: controller.phonenumbercontroller.text == ""
                                  ? Color(0xffBEBEBE)
                                  : Color(0xff0075FF)),
                          child: Center(
                            child: Text(
                              "GONDER",
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
