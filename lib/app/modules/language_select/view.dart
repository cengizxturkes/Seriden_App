import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/config/theme/my_fonts.dart';

import '../../components/color_manager.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class LanguageSelectPage extends GetView<LanguageSelectController> {
  const LanguageSelectPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LanguageSelectController>(
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
                          title: "Dil Tercihi",
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(),
                        SizedBox(height: 15.h),
                        Container(
                          width: 315.0.w,
                          height: 40.0.h,
                          decoration: BoxDecoration(
                            color: Color(0xFFBEBEBE),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Center(
                            child: DropdownButton(
                              items: <DropdownMenuItem<String>>[
                                DropdownMenuItem(
                                  value: 'English',
                                  child: Text(
                                    'English',
                                    style: TextStyle(
                                      fontSize: 15.h,
                                      color: Colors.white,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'French',
                                  child: Text(
                                    'French',
                                    style: TextStyle(
                                      fontSize: 15.h,
                                      color: Colors.white,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 'Spanish',
                                  child: Text(
                                    'Spanish',
                                    style: TextStyle(
                                      fontSize: 15.h,
                                      color: Colors.white,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                ),
                              ],
                              value: 'English',
                              onChanged: (value) {
                                // Do something with the selected value.
                              },
                              dropdownColor: Color(0xFFBEBEBE),
                            ),
                          ),
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
                          height: 40.h,
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
