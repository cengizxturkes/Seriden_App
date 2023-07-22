import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../../services/advertise_service.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertiseThirdPage extends GetView<AdvertiseThirdController> {
  AdvertiseThirdPage({Key? key}) : super(key: key);
  AdvertiseService advertiseService = Get.find();

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  List<CommunicationPreferencesMethod> methods = [
    CommunicationPreferencesMethod("Telefon Ve Mesaj", 0),
    CommunicationPreferencesMethod("Telefon", 1),
    CommunicationPreferencesMethod("Mesaj", 2),
  ];
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
                        "İletişim Bilgileri", advertiseService.setName),
                    createTextBox("", advertiseService.setNumber),
                    SizedBox(
                      height: 20.h,
                    ),
                    BlueTextProfile(title: "İletişim Tercihleri"),
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
                              ChooseScreenWidget(
                                  title: item.title,
                                  isselected: index ==
                                      controller.selectedMethodIndex.value,
                                  onClick: () {
                                    controller.selectedMethodIndex.value =
                                        index;
                                    controller.selectedMethodIndex
                                        .update((val) {});
                                  }),
                            ],
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.PAYMENTPAGE,
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
                              "DEVAM ET 3/4",
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

Widget createTextBox(String title, Function(String value) textChange) {
  var controller = TextEditingController();
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
