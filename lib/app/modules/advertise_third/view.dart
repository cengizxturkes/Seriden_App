import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../components/custom_snackbar.dart';
import '../../routes/app_pages.dart';
import '../../repositories/advertise_repository.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertiseThirdPage extends GetView<AdvertiseThirdController> {
  AdvertiseThirdPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdvertiseThirdController>(
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
                      height: 30.h,
                    ),
                    createTextBox(
                        "Fiyat",
                        AdvertiseRepositorys.instance.newAdvertiseModel.price
                            .toString(),
                        AdvertiseRepositorys.instance.setPrice),
                    SizedBox(
                      height: 15.h,
                    ),
                    createTextBox(
                      "Açıklama",
                      AdvertiseRepositorys
                          .instance.newAdvertiseModel.description,
                      AdvertiseRepositorys.instance.setDescription,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),

                    createTextBox(
                      "Başlık",
                      AdvertiseRepositorys.instance.newAdvertiseModel.title,
                      AdvertiseRepositorys.instance.setTitle,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // BlueTextProfile(title: "İletişim Tercihleri"),
                    // SizedBox(
                    //   height: 20.h,
                    // ),
                    // ListView.builder(
                    //   shrinkWrap: true,
                    //   itemCount: methods.length,
                    //   itemBuilder: (context, index) {
                    //     var item = methods[index];
                    //     return Obx(
                    //       () => Column(
                    //         children: [
                    //           ChooseScreenWidget(
                    //               title: item.title,
                    //               isselected: index ==
                    //                   controller.selectedMethodIndex.value,
                    //               onClick: () {
                    //                 controller.selectedMethodIndex.value =
                    //                     index;
                    //                 controller.selectedMethodIndex
                    //                     .update((val) {});
                    //               }),
                    //         ],
                    //       ),
                    //     );
                    //   },
                    // ),
                    SizedBox(
                      height: 50.h,
                    ),
                    GestureDetector(
                      onTap: () async {
                        await controller.post();
                        CustomSnackBar.showCustomSnackBar(
                            title: "Başarılı", message: "İlan Oluşturuldu");
                      },
                      child: Container(
                          height: 40.h,
                          width: 315.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Color(0xff0075FF)),
                          child: Center(
                            child: Text(
                              "Bitir",
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

class ChooseScreenWidget extends StatefulWidget {
  final String title;
  bool isselected = false;
  Function onClick;

  ChooseScreenWidget({
    Key? key,
    required this.onClick,
    required this.isselected,
    required this.title,
  }) : super(key: key);

  @override
  State<ChooseScreenWidget> createState() => _ChooseScreenWidgetState();
}

class _ChooseScreenWidgetState extends State<ChooseScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: BlackTextProfile(title: widget.title),
          leading: GestureDetector(
              onTap: () {
                widget.onClick();
              },
              child: !widget.isselected
                  ? Icon(Icons.radio_button_off)
                  : Icon(Icons.radio_button_on)),
        ),
        Divider(),
      ],
    );
  }
}

Widget createTextBox(
    String title, String value, Function(String value) textChange) {
  var controller = TextEditingController(text: value);
  controller.addListener(() {
    textChange(controller.text);
  });

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      BlueTextProfile(
        title: title,
      ),
      SizedBox(height: 5.h),
      TextFormField(
        controller: controller,
      ),
    ],
  );
}

class CommunicationPreferencesMethod {
  CommunicationPreferencesMethod(this.title, this.methodType);
  String title;
  bool Selected = false;
  int methodType = 0;
}
