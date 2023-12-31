import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/user/user_response.dart';

import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../routes/app_pages.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class PhoneNumberPage extends GetView<PhoneNumberController> {
  const PhoneNumberPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PhoneNumberController>(
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    BlueTextProfile(
                      title: "Kişisel Bilgilerim",
                    ),
                    Divider(),
                    SizedBox(height: 20.h),
                    Container(
                        height: 100.w,
                        width: 100.h,
                        child: Center(
                            child:
                                Image.asset("assets/images/gg_profile.png"))),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: BlackTextProfile(
                        title: "Kayıtlı Telefon Numaranız",
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    SizedBox(
                        height: 50.h,
                        child: CustomFutureBuilder<User>(
                          future: controller.getUser(),
                          onError: (msg) => Text(msg),
                          onSuccess: (data) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: 1,
                              itemBuilder: ((context, index) {
                                var phonenumber = data;
                                print(phonenumber);
                                return Center(
                                  child: BlueTextProfilePhone(
                                    title: phonenumber.phone,
                                  ),
                                );
                              }),
                            );
                          },
                          onDataEmpty: () {
                            return Center(child: Text("Kategori bulunamadı"));
                          },
                        )),
                    SizedBox(height: 20.h),
                    Center(
                      child: BlackTextProfileCenter(
                        title:
                            "Telefon numaranız, yayınlanmasını istediğiniz ilanlarınızda ve diğer kullanıcılara  göndereceğiniz mesajlarda gösterilecektir.",
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    // GestureDetector(
                    //   child: Container(
                    //       height: 40.h,
                    //       width: 315.w,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(50.r),
                    //           color: Color(0xff0075FF)),
                    //       child: Center(
                    //         child: GestureDetector(
                    //           onTap: () {
                    //             Get.toNamed(Routes.CHANGEPHONENUMBER);
                    //           },
                    //           child: Text(
                    //             "DEĞİŞTİR",
                    //             style: TextStyle(
                    //               fontSize: 15.h,
                    //               color: Colors.white,
                    //               fontFamily: "Gilroy",
                    //             ),
                    //           ),
                    //         ),
                    //       )),
                    // ),
                    // SizedBox(
                    //   height: 20.h,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.back();
                    //   },
                    //   child: Container(
                    //       height: 40.h,
                    //       width: 315.w,
                    //       decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(50.r),
                    //           color: Colors.white),
                    //       child: Center(
                    //         child: Text(
                    //           "VAZGEÇ",
                    //           style: TextStyle(
                    //             fontSize: 15.h,
                    //             color: Color(0xff0075FF),
                    //             fontFamily: "Gilroy",
                    //           ),
                    //         ),
                    //       )),
                    // ),
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
