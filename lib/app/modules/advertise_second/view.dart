import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/advertise_post_model/advertise_post_model.dart';
import 'package:getx_skeleton/app/modules/advertise_second/image_helper.dart';
import 'package:image_picker/image_picker.dart';

import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../../repositories/advertise_repository.dart';
import '../constwidget/blue_text_profile.dart';
import '../constwidget/profile_gray_text.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertiseSecondPage extends GetView<AdvertiseSecondController> {
  AdvertiseSecondPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    ImageHelper helper = ImageHelper();
    return GetBuilder<AdvertiseSecondController>(
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
                    Padding(
                      padding: EdgeInsets.only(left: 80.w),
                      child: ListTile(
                        title: BlackTextProfile(
                          title: "Fotoğraf Ve Videolar",
                        ),
                        subtitle: GestureDetector(
                          onTap: () async {
                            controller.selectedFiles.value =
                                await picker.pickMultiImage();

                            controller.update();
                          },
                          child: BlueTextProfile(
                            title: "Farklı Bir Albüm Seç",
                          ),
                        ),
                        trailing: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.image.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10.h,
                      ),
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          // child: controller.image != null
                          //     ? Image.file(
                          //         controller.image[index]!,
                          //         fit: BoxFit.contain,
                          //       )
                          //     : Text('Resim seçilmedi.'),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await controller.post();
                        Get.toNamed(
                          Routes.ADVERTISETHIRDPAGE,
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
                              "Paylaş",
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
