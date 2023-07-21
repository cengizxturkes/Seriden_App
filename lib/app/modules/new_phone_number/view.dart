import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
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
                         showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return new AlertDialog(
                      content: new Container(
                        width: 315.w,
                        height: 250.h,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
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
                                  title: "Numaranız başarıyla değiştirildi."),
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
