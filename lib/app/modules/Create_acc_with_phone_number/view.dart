import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';
import 'package:getx_skeleton/app/modules/constwidget/profile_gray_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/color_manager.dart';
import '../../repositories/register_repository_phone_number.dart';
import '../../routes/app_pages.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class CreateAccWithPhoneNumberPage
    extends GetView<CreateAccWithPhoneNumberController> {
  CreateAccWithPhoneNumberPage({Key? key}) : super(key: key);
  RegirterPhoneNumberRepository regirterPhoneNumberRepository = Get.find();

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    var asA = controller.phoneNumber;
    return GetBuilder<CreateAccWithPhoneNumberController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SERİDEN",
                      style: GoogleFonts.galindo(
                          fontSize: 40.h, color: Color(0xff4B4F52))),
                  BlueTextProfile(title: "Telefon Numarası"),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    asA,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Gilroy"),
                  ),
                  createTextBox(
                      "Ad Soyad",
                      regirterPhoneNumberRepository.addnameSurname,
                      regirterPhoneNumberRepository.newRegisterPhoneModel.name),
                  SizedBox(
                    height: 79.h,
                  ),
                  createTextBox(
                      "Şifre",
                      regirterPhoneNumberRepository.addPass,
                      regirterPhoneNumberRepository.newRegisterPhoneModel.pass
                          as String),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.CREATEACCWITHPHONENUMBER,
                          arguments: regirterPhoneNumberRepository
                              .newRegisterPhoneModel.phone_number);
                      regirterPhoneNumberRepository.save();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(width: 2, color: Color(0xff0075FF))),
                      height: 50.h,
                      width: 315.w,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Üye Ol",
                                  style: TextStyle(
                                    color: Color(0xff0075FF),
                                    fontSize: 15,
                                    fontFamily: "Gilroy",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          )),
        );
      },
    );
  }
}

Widget createTextBox(
    String title, Function(String value) textChange, String value) {
  var controller = TextEditingController(text: value);
  controller.addListener(() {
    textChange(controller.text);
  });
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          labelText: title,
        ),
      ),
    ],
  );
}
