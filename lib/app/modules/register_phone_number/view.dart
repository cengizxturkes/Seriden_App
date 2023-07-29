import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/theme/dark_theme_colors.dart';
import '../../components/color_manager.dart';
import '../../repositories/register_repository_phone_number.dart';
import '../../routes/app_pages.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class RegisterPhoneNumberPage extends GetView<RegisterPhoneNumberController> {
  RegisterPhoneNumberPage({Key? key}) : super(key: key);
  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterPhoneNumberController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SERİDEN",
                      style: GoogleFonts.galindo(
                          fontSize: 40.h, color: Color(0xff4B4F52))),
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Row(
                      children: [
                        BlueTextProfile(title: "E-Posta Adresi"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: createTextBox("e-posta", controller.mail,
                        controller.newRegisterPhoneModel.mail),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Row(
                      children: [
                        BlueTextProfile(title: "Ad Soyad"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: createTextBox("Ad-Soyad", controller.addnameSurname,
                        controller.newRegisterPhoneModel.name),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Row(
                      children: [
                        BlueTextProfile(title: "Şifre"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: createTextBox("Şifre", controller.addPass,
                        controller.newRegisterPhoneModel.pass),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Row(
                      children: [
                        BlueTextProfile(title: "Telefon Numarası"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: createTextBox(
                        "Telefon Numarası",
                        controller.phoneNumber,
                        controller.newRegisterPhoneModel.phone_number),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  GestureDetector(
                    onTap: () async {
                      controller.save();
                      Get.toNamed(Routes.LOGINWITHEMAIL);
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
                                  "Kayıt Ol",
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
          ),
        );
        // return Scaffold(
        //   backgroundColor: ColorManager.base20,
        //   body: SafeArea(
        //       child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //         Text("SERİDEN",
        //             style: GoogleFonts.galindo(
        //                 fontSize: 40.h, color: Color(0xff4B4F52))),
        //         SizedBox(
        //           height: 100.h,
        //         ),
        //         createTextBox(
        //             "Telefon Numarası",
        //             regirterPhoneNumberRepository.phoneNumber,
        //             regirterPhoneNumberRepository
        //                 .newRegisterPhoneModel.phone_number as String),
        //         SizedBox(
        //           height: 50.h,
        //         ),
        //         GestureDetector(
        //           onTap: () {
        //             Get.toNamed(Routes.CREATEACCWITHPHONENUMBER,
        //                 arguments: regirterPhoneNumberRepository
        //                     .newRegisterPhoneModel.phone_number);
        //           },
        //           child: Container(
        //             decoration: BoxDecoration(
        //                 color: Color(0xffFFFFFF),
        //                 borderRadius: BorderRadius.circular(50),
        //                 border: Border.all(width: 2, color: Color(0xff0075FF))),
        //             height: 50.h,
        //             width: 315.w,
        //             child: Stack(
        //               children: [
        //                 Positioned.fill(
        //                   child: Container(
        //                     child: Center(
        //                       child: Text(
        //                         "Üye Ol",
        //                         style: TextStyle(
        //                           color: Color(0xff0075FF),
        //                           fontSize: 15,
        //                           fontFamily: "Gilroy",
        //                           fontWeight: FontWeight.w300,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //         SizedBox(
        //           height: 73.h,
        //         ),
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               "Zaten Hesabın Var Mı?",
        //               style: TextStyle(
        //                 color: Colors.black,
        //                 fontSize: 15,
        //                 fontFamily: "Gilroy-Regular",
        //                 fontWeight: FontWeight.w300,
        //               ),
        //             ),
        //             GestureDetector(
        //               onTap: () {
        //                 Get.toNamed(Routes.LOGINWITHEMAIL);
        //               },
        //               child: Text(
        //                 "Giriş Yap",
        //                 style: TextStyle(
        //                   color: Color(0xff0075FF),
        //                   fontSize: 15,
        //                   fontFamily: "Gilroy-Regular",
        //                   fontWeight: FontWeight.w300,
        //                 ),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 65.h,
        //             ),
        //           ],
        //         ),
        //         Row(children: <Widget>[
        //           Expanded(
        //               child: Divider(
        //             height: 10.h,
        //           )),
        //           Padding(
        //             padding: EdgeInsets.only(left: 15.w, right: 15.w),
        //             child: Text("Ve Ya"),
        //           ),
        //           Expanded(
        //               child: Divider(
        //             height: 10.h,
        //           )),
        //         ]),
        //         SizedBox(
        //           height: 20.h,
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(
        //             left: 30.w,
        //             right: 30.w,
        //           ),
        //           child: Row(
        //             children: [
        //               Container(
        //                 decoration: BoxDecoration(
        //                     color: Color(0xffFFFFFF),
        //                     borderRadius: BorderRadius.circular(50),
        //                     border:
        //                         Border.all(width: 2, color: Color(0xff0075FF))),
        //                 height: 50.h,
        //                 width: 150.w,
        //                 child: Stack(
        //                   children: [
        //                     Positioned.fill(
        //                       child: Container(
        //                         child: Center(
        //                           child: Text(
        //                             "Google İle Bağlan",
        //                             style: TextStyle(
        //                               color: Color(0xff0075FF),
        //                               fontSize: 15,
        //                               fontFamily: "Gilroy",
        //                               fontWeight: FontWeight.w300,
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               Spacer(),
        //               Container(
        //                 decoration: BoxDecoration(
        //                     color: Color(0xffFFFFFF),
        //                     borderRadius: BorderRadius.circular(50),
        //                     border:
        //                         Border.all(width: 2, color: Color(0xff0075FF))),
        //                 height: 50.h,
        //                 width: 150.w,
        //                 child: Stack(
        //                   children: [
        //                     Positioned.fill(
        //                       child: Container(
        //                         child: Center(
        //                           child: Text(
        //                             "E-Posta İle Üye Ol",
        //                             style: TextStyle(
        //                               color: Color(0xff0075FF),
        //                               fontSize: 15,
        //                               fontFamily: "Gilroy",
        //                               fontWeight: FontWeight.w300,
        //                             ),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ])),
        // );
      },
    );
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
}
