import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../constwidget/blue_text_profile.dart';
import '../constwidget/profile_gray_text.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class ProblemSuggestionNotificationPage
    extends GetView<ProblemSuggestionNotificationController> {
  const ProblemSuggestionNotificationPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProblemSuggestionNotificationController>(
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
                        // BlueTextProfile(
                        //   title: "Sorun/Öneri Bildirimi",
                        // ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                                height: 158.h,
                                width: 315.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                          hintText:
                                              "Açıklamanızı buraya yazabilirsiniz"),
                                      onEditingComplete: () {
                                        FocusScope.of(context).nextFocus();
                                      },
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 30.h,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                                height: 158.h,
                                width: 315.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.w, top: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      BlackTextProfile(title: "Dosya Yükle"),
                                      FileUploadButton(),
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 30.h,
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
                          ],
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

class FileUploadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 50.h,
          width: 50.w,
          child: Icon(
            Icons.file_upload,
          )),
      onTap: () async {
        var picked = await FilePicker.platform.pickFiles();
        if (picked != null) {
          print(picked.files.first.name);
        }
      },
    );
  }
}
