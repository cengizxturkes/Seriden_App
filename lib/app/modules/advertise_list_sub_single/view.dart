import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:getx_skeleton/app/data/models/add_favorite/add_favorite_post.dart';
import 'package:getx_skeleton/app/data/models/get_advertise/advertise_reponse.dart';
import 'package:getx_skeleton/app/data/models/message/message_response.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';
import 'package:getx_skeleton/app/modules/constwidget/profile_gray_text.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../components/color_manager.dart';
import '../../components/custom_snackbar.dart';
import '../../repositories/advertise_repository.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvetiseLastPage extends GetView<AdvetiseLastController> {
  AdvetiseLastPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    var argument = AdvetiseLastController.lastAdvertice;
    if (Get.arguments is GetAdvertise) {
      argument = Get.arguments as GetAdvertise;
    }
    print(argument);
    return GetBuilder<AdvetiseLastController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppBarConst(),
                  SizedBox(
                    height: 30.h,
                  ),
                  Image.network(
                    argument!.url,
                    height: 200,
                    width: 400,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: Get.back,
                        child: Icon(
                          Icons.navigate_before,
                          color: Color(0xffBEBEBE),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: BlueTextProfilePhone(title: argument.title),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Text(argument.description),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: Row(
                      children: [
                        Text(
                          "FİYAT",
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 15.sp),
                        ),
                        Spacer(),
                        BlueTextProfile(title: argument.price),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: Row(
                      children: [
                        Text(
                          "Oluşturulma Tarihi",
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 15.sp),
                        ),
                        Spacer(),
                        BlueTextProfile(title: argument.createdAt),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              var login = MyHive.getCurrentUser();
                              // Message(
                              //   adId: argument.subCatId,
                              //   createdAt: DateTime.now().toString(),
                              //   fromUserId: login!.id,
                              //   toUserId: argument.id, id: 150000.toString(), message: '',

                              // );
                              await Get.toNamed(
                                Routes.MESSAGESCREEN,
                                arguments: Message(
                                    id: "-1",
                                    fromUserId:
                                        MyHive.getCurrentUser()?.id ?? "",
                                    toUserId: argument!.userId,
                                    message: "",
                                    adId: argument!.id,
                                    seen: "",
                                    createdAt: "",
                                    title: "",
                                    nameSurname: "ilan sahibi",
                                    photo: ""),
                              );
                            },
                            child: Container(
                                height: 60.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xff0075FF)),
                                child: Center(
                                  child: Text(
                                    "MESAJ GÖNDER",
                                    style: TextStyle(
                                      fontSize: 15.h,
                                      color: Colors.white,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(width: 20.w),
                          GestureDetector(
                            onTap: () {
                              var deneme = AddFavoritePost(
                                  adId: int.parse(argument!.id),
                                  userId:
                                      int.parse(MyHive.getCurrentUser()!.id));
                              controller.addFavorite(deneme);
                              CustomSnackBar.showCustomSnackBar(
                                  title: "Başarılı", message: "");
                            },
                            child: Container(
                                height: 60.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xff0075FF)),
                                child: Center(
                                  child: Text(
                                    "FAVORİLERE EKLE",
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
                    ],
                  )
                ]),
          )),
        );
      },
    );
  }
}

class LastCheckAdvise extends StatelessWidget {
  final String title;
  final String desc;

  const LastCheckAdvise({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: BlackTextProfile(title: title)),
        BlueTextProfile(title: desc),
      ],
    );
  }
}
