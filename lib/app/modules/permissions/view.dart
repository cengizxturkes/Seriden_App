import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/config/theme/my_fonts.dart';

import '../../routes/app_pages.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class PermissionsPage extends GetView<PermissionsController> {
  PermissionsPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  List<PermissionMethod> methods = [
    PermissionMethod(
        "Mesaj Okundu Bilgisi",
        "Mesaj okundu bilgisi açık olan kişiler, birbiriyle mesajlaşırken, mesajlarının okunup okunmadığını görebilirler. Eğer mesajlaştığınız kişiye bu bilginin gitmesini istemiyorsanız, bu ayarı kapatabilirsiniz. Bu ayarı kapatırsanız, siz de göndermiş olduğunuz mesajların okunma bilgisini göremezsiniz.",
        0),
    PermissionMethod("Mobil Bildirim İzni", "", 1),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PermissionsController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Color(0xffF2F2F2),
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
                        title: "İzinlerim",
                      ),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: methods.length,
                        itemBuilder: (context, index) {
                          var item = methods[index];
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.selectedMethodIndex.value = index;
                                  controller.selectedMethodIndex
                                      .update((val) {});
                                  var selectedMethod = methods[
                                      controller.selectedMethodIndex.value];
                                  Get.toNamed(Routes.PERMISSIONSVIEW,
                                      arguments: selectedMethod.methodType);
                                },
                                child: PermissionWidget(
                                  title: item.title,
                                  subtitle: item.subtitle,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
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

class PermissionWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  const PermissionWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  State<PermissionWidget> createState() => _PermissionWidgetState();
}

class _PermissionWidgetState extends State<PermissionWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: textTheme.labelSmall,
      ),
      trailing: Icon(Icons.navigate_next),
    );
  }
}

class PermissionMethod {
  PermissionMethod(this.title, this.subtitle, this.methodType);
  String title;
  String subtitle;
  bool Selected = false;
  int methodType = 0;
}
