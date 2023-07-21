import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class ChangeNumberPage extends GetView<ChangeNumberController> {
  ChangeNumberPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  List<PassChangeMethod> methods = [
    PassChangeMethod(
        "E-Posta",
        "seridenayse@gmail.com e-posta adresime şifre sıfırlama bağlantısı gönder.",
        0),
    PassChangeMethod("Kurtarma E-Postası",
        "e-posta adresime şifre sıfırlama bağlantısı gönder.", 1),
    PassChangeMethod("Cep Telefonu",
        "0555 111 22 33 numaralı cep telefonuma SMS ile onay kodu gönder.", 2)
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangeNumberController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: Color(0xffF2F2F2),
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
                      title: "Numaranı Değiştir",
                    ),
                    Divider(),
                    SizedBox(height: 20.h),
                    BlackTextProfile(
                      title:
                          "Cep telefonu değişikliği için e-posta veya cep telefonu yöntemlerinden birini seçin.",
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: methods.length,
                      itemBuilder: (context, index) {
                        var item = methods[index];
                        return Obx(
                          () => Column(
                            children: [
                              EpostaWidget(
                                title: item.title,
                                subtitle: item.subtitle,
                                isselected: index ==
                                    controller.selectedMethodIndex.value,
                                onClick: () {
                                  controller.selectedMethodIndex.value = index;
                                  controller.selectedMethodIndex
                                      .update((val) {});
                                },
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    // IconButton(
                    //     onPressed: () {
                    //       var selectedMethod =
                    //           methods[controller.selectedMethodIndex.value];
                    //       print(selectedMethod.title);
                    //     },
                    //     icon: Icon(Icons.send)),
                    GestureDetector(
                      onTap: () {
                        var selectedMethod =
                            methods[controller.selectedMethodIndex.value];
                        if (selectedMethod.methodType == 0) {
                          Get.toNamed(Routes.CHANGEPHONENUMBERWITHEMAIL);
                        }
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

class EpostaWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  Function onClick;
  bool isselected = false;
  EpostaWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onClick,
    required this.isselected,
  }) : super(key: key);

  @override
  State<EpostaWidget> createState() => _EpostaWidgetState();
}

class _EpostaWidgetState extends State<EpostaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 315.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: () {
          widget.onClick();
        },
        child: ListTile(
          leading: GestureDetector(
              onTap: () {
                widget.onClick();
              },
              child: !widget.isselected
                  ? Icon(Icons.radio_button_off)
                  : Icon(Icons.radio_button_on)),
          title: BlackTextProfileBold(
            title: widget.title,
          ),
          subtitle: BlackTextProfileEmail(
            title: widget.subtitle,
          ),
          trailing: Icon(Icons.navigate_next),
        ),
      ),
      // child: Row(children: [
      //   SizedBox(width: 5.w),
      //   Icon(
      //     Icons.radio_button_off,
      //     color: Color(0xffBEBEBE),
      //   ),
      //   Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.only(left: 20),
      //         child: BlackTextProfileBold(
      //           title: "E-Posta",
      //         ),
      //       ),
      //       BlackTextProfileCenter(
      //         title:
      //             "seridenayse@gmail.com e-posta \nadresime şifre sıfırlama bağlantısı gönder.",
      //       ),
      //     ],
      //   ),
      //   Container(
      //       height: 24.h,
      //       width: 24.w,
      //       child: Icon(
      //         Icons.navigate_next,
      //       )),
      // ]),
    );
  }
}

class PassChangeMethod {
  PassChangeMethod(this.title, this.subtitle, this.methodType);
  String title;
  String subtitle;
  bool Selected = false;
  int methodType = 0;
}
