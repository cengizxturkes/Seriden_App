import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:getx_skeleton/app/data/models/update_profile/update_user_model.dart';
import 'package:getx_skeleton/app/data/models/user_model.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../data/models/user/user_response.dart';
import '../../repositories/user_repository.dart';
import '../advertise_second/image_helper.dart';
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
    var user = MyHive.getCurrentUser();

    ImagePicker imagePicker = ImagePicker();

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
                        backgroundImage: NetworkImage(
                          user?.photo ?? "",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () async {
                          var image = await imagePicker.pickImage(
                              source: ImageSource.gallery);

                          controller.userImage = File(image!.path);

                          // userService.image(controller.userImage);
                          controller.update();
                        },
                        child: BlueTextProfile(
                          title: "Profil Fotoğrafı Ekle",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    // SizedBox(
                    //     height: 50.h,
                    //     child: CustomFutureBuilder<User>(
                    //       future: controller.getUser(),
                    //       onError: (msg) => Text(msg),
                    //       onSuccess: (data) {
                    //         return ListView.builder(
                    //           shrinkWrap: true,
                    //           itemCount: 1,
                    //           itemBuilder: ((context, index) {
                    //             var myAdv = data;
                    //             print(myAdv);
                    //             controller.usercontroller.text =
                    //                 myAdv.nameSurname;
                    //             return TextField(
                    //               controller: controller.usercontroller,
                    //             );
                    //           }),
                    //         );
                    //       },
                    //       onDataEmpty: () {
                    //         return Center(child: Text("Kategori bulunamadı"));
                    //       },
                    //     )),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: controller.userName,
                      onEditingComplete: controller.onEditingComplete,
                      onChanged: (value) {
                        controller.onTextChanged();
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextField(
                      controller: controller.phone,
                      onEditingComplete: controller.onEditingComplete,
                      onChanged: (value) {
                        controller.onTextChanged();
                      },
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.uptadedProfile(UpdateUserModel(
                            id: user!.id,
                            nameSurname: controller.userName.text,
                            phone: controller.phone.text,
                            photo: controller.userImage,));

                            controller.update();
                            Navigator.of(context);
                      },
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

Widget createTextBox(
    String title, Function(String value) textChange, String value) {
  var controller = TextEditingController(text: value);
  controller.addListener(() {
    textChange(controller.text);
  });
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 5.h),
      TextFormField(
        decoration: InputDecoration(
          labelText: title,
        ),
        controller: controller,
      ),
      SizedBox(
        height: 20.h,
      ),
    ],
  );
}
