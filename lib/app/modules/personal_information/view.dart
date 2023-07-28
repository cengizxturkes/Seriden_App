import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../data/models/user/user_response.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class PersonalInformationPage extends GetView<PersonalInformationController> {
  PersonalInformationPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalInformationController>(
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
                      title: "Kişisel Bilgilerim",
                    ),
                    Divider(),
                    SizedBox(height: 20.h),
                    Container(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        radius: (52),
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          "assets/images/message/profile2.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: BlueTextProfile(
                        title: "Profil Fotoğrafı Ekle",
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
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
                                var myAdv = data;
                                print(myAdv);
                                controller.usercontroller.text = myAdv.name;
                                return TextField(
                                  controller: controller.usercontroller,
                                );
                              }),
                            );
                          },
                          onDataEmpty: () {
                            return Center(child: Text("Kategori bulunamadı"));
                          },
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: TextEditingController(text: 'İsim Soyisim'),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: TextEditingController(text: 'Telefon No'),
                    ),
                    SizedBox(
                      height: 40.h,
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
                    SizedBox(
                      height: 20.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          height: 40.h,
                          width: 315.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              "VAZGEÇ",
                              style: TextStyle(
                                fontSize: 15.h,
                                color: Color(0xff0075FF),
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
