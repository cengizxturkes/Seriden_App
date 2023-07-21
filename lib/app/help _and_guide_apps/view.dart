import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../components/color_manager.dart';
import '../modules/advertise/view.dart';
import '../modules/constwidget/blue_text_profile.dart';
import '../modules/constwidget/profile_gray_text.dart';
import '../modules/home/views/home_view.dart';
import '../routes/app_pages.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class HelpAndGuideAppsPage extends GetView<HelpAndGuideAppsController> {
  HelpAndGuideAppsPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  List<HelpAndGuideMethod> methods = [
    HelpAndGuideMethod("Sıkça Sorulan Sorular"),
    HelpAndGuideMethod("Hesap İşlemleri"),
    HelpAndGuideMethod("İlan İşlemleri"),
    HelpAndGuideMethod("İlan Arama"),
    HelpAndGuideMethod("Güvenlik İpuçları"),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HelpAndGuideAppsController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
                backgroundColor: ColorManager.base20,

          body: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  AppBarConst(),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        BlueTextProfile(
                          title: "Yardım Ve Rehber İşlemleri",
                        ),
                        Divider(),
                        SizedBox(
                          height: 20.h,
                        ),
                        SearchWidget(),
                        SizedBox(
                          height: 20.h,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: methods.length,
                          itemBuilder: (context, index) {
                            var item = methods[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    ProfileGrayText(
                                      title: item.title,
                                    ),
                                    Spacer(),
                                    Icon(Icons.navigate_next),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Divider(),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class HelpAndGuideMethod {
  HelpAndGuideMethod(
    this.title,
  );
  String title;
}
