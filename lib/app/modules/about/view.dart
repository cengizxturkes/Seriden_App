import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../advertise/view.dart';
import '../constwidget/blue_text_profile.dart';
import '../constwidget/profile_gray_text.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AboutPage extends GetView<AboutController> {
  AboutPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  List<AboutPageMethod> methods = [
    AboutPageMethod("İletişim"),
    AboutPageMethod("Kullanım Koşulları"),
    AboutPageMethod("Kullanım Koşulları"),
    AboutPageMethod("Hesap Sözleşmesi"),
    AboutPageMethod("Gizlilik Politikası"),
    AboutPageMethod("Kişisel Verilerin Korunması"),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          bottomNavigationBar: BottomNavbar(),
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
                        height: 30.h,
                      ),
                      BlueTextProfile(
                        title: "Hakkında",
                      ),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      SearchWidget(),
                      SizedBox(
                        height: 15.h,
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
                )
              ]),
            ),
          ),
        );
      },
    );
  }
}

class AboutPageMethod {
  AboutPageMethod(
    this.title,
  );
  String title;
}
