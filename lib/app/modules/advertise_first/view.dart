import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/category/category_sub_responce.dart';
import 'package:getx_skeleton/app/data/models/sub_category/sub_category_prop_response.dart';
import 'package:getx_skeleton/app/repositories/advertise_repository.dart';

import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../routes/app_pages.dart';
import '../advertise_second/view.dart';
import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertiseFirstPage extends GetView<AdvertiseFirstController> {
  AdvertiseFirstPage({Key? key}) : super(key: key);
  AdvertiseRepository advertiseService = Get.find();

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  var argument = Get.arguments as Subcategory;

  @override
  Widget build(BuildContext context) {
    controller.load(argument.id);
    return GetBuilder<AdvertiseFirstController>(
      builder: (_) {
        return WillPopScope(
          onWillPop: () async {
            AdvertiseFirstController.lastId = "";
            return true;
          },
          child: Scaffold(
            bottomNavigationBar: BottomNavbar(),
            backgroundColor: ColorManager.base20,
            body: SingleChildScrollView(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  AppBarConst(),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w, right: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Obx(() {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: AdvertiseFirstController.props.length,
                            itemBuilder: ((context, index) {
                              return CreateTextBox(
                                prop: controller.data[index],
                              );
                            }),
                          );
                        }),
                        // createTextBox("İlan başlığı", advertiseService.setTitle,
                        //     advertiseService.newAdvertiseModel.title),
                        // createTextBox("Açıklama", advertiseService.setDescription,
                        //     advertiseService.newAdvertiseModel.description),
                        // createTextBox("Fiyat", advertiseService.setPrice,
                        //     advertiseService.newAdvertiseModel.price.toString()),
                        // createTextBox("Cinsiyet", advertiseService.setPrice,
                        //     advertiseService.newAdvertiseModel.title),
                        // createTextBox("Konum", advertiseService.setPrice,
                        //     advertiseService.newAdvertiseModel.title),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(
                              Routes.ADVERTISESECONDPAGE,
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
                                  "DEVAM ET 1/4",
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CreateTextBox extends StatelessWidget {
  SubcategoryProp prop;
  AdvertiseRepository advertiseService = Get.find();

  CreateTextBox({
    required this.prop,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AdvModel valueModel = advertiseService.getPropValue(prop);
    var controllerx = TextEditingController(text: valueModel.description);
    controllerx.addListener(() {
      if (valueModel.description != controllerx.text) {
        valueModel.description = controllerx.text;
      }
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlueTextProfile(
          title: prop.title,
        ),
        SizedBox(height: 5.h),
        TextFormField(
          controller: controllerx,
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

class AdvetiseTextWidget extends StatelessWidget {
  final String title;
  final Function(String value) textChange;
  const AdvetiseTextWidget({
    Key? key,
    required this.title,
    required this.textChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
