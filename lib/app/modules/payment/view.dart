import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../../repositories/advertise_repository.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class PaymentPage extends GetView<PaymentController> {
  PaymentPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  List<String> initisl = [
    "Kart Numarası",
    "Kart Üzerindeki İsim Soyisim",
    "Son Kullanma Tarihi",
    "CVV/CVC"
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(
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
                    createTextBox("Ödeme Bilgileri",
                        AdvertiseRepositorys.instance.CardNumber, initisl[0]),
                    createTextBox(
                        "",
                        AdvertiseRepositorys.instance.CardNameSurname,
                        initisl[1]),
                    createTextBox("", AdvertiseRepositorys.instance.LastUseTime,
                        initisl[2]),
                    createTextBox(
                        "", AdvertiseRepositorys.instance.CvCs, initisl[3]),
                    SizedBox(
                      height: 20.h,
                    ),
                    ThreeDWidget(
                        title: "3D Secure ile Ödemek İstiyorum",
                        isselected: controller.selectedMethod.value,
                        onClick: () {
                          controller.selectedMethod.value =
                              !controller.selectedMethod.value;
                          controller.selectedMethod.update((val) {});
                          controller.update();
                        }),
                    SizedBox(
                      height: 50..h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.ADVERTISELAST,
                        );
                        //advertiseService.save();
                      },
                      child: Container(
                          height: 40.h,
                          width: 315.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Color(0xff0075FF)),
                          child: Center(
                            child: Text(
                              "DEVAM ET 4/4",
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

class ThreeDWidget extends StatefulWidget {
  final String title;
  bool isselected = false;
  Function onClick;
  ThreeDWidget({
    Key? key,
    required this.title,
    required this.isselected,
    required this.onClick,
  }) : super(key: key);

  @override
  State<ThreeDWidget> createState() => _ThreeDWidgetState();
}

class _ThreeDWidgetState extends State<ThreeDWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              widget.onClick();
            },
            child: !widget.isselected
                ? Icon(Icons.radio_button_off)
                : Icon(Icons.radio_button_on)),
        SizedBox(
          width: 20.w,
        ),
        BlackTextProfile(title: widget.title)
      ],
    );
  }
}

Widget createTextBox(
    String title, Function(String value) textChange, String inital) {
  var controller = TextEditingController();
  controller.addListener(() {
    textChange(controller.text);
  });
  controller.text = inital;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      BlueTextProfile(
        title: title,
      ),
      SizedBox(height: 5.h),
      TextFormField(
        controller: controller,
        //initialValue: inital,
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );
}
