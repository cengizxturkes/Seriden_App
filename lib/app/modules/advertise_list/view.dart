import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../components/color_manager.dart';
import '../../data/models/category/category_sub_responce.dart';
import '../advertise_list_sub/view.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertiseListPage extends GetView<AdvertiseListController> {
  const AdvertiseListPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    late Category? arguments = controller.selected;
    controller.selected ??= Get.arguments as Category;

    return GetBuilder<AdvertiseListController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Expanded(
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
                      Row(
                        children: [
                          GestureDetector(
                            onTap: Get.back,
                            child: Icon(
                              Icons.navigate_before,
                              color: Color(0xffBEBEBE),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            arguments!.name,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff0075FF),
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      ...arguments.subcategories
                          .map((e) => Container(
                                margin: EdgeInsets.only(bottom: 20.h),
                                child: GestureDetector(
                                  onTap: () async {
                                    await Get.toNamed(Routes.ADVERTISELISTSUB,
                                        arguments: AdvertiseListSubPageArgument(
                                            arguments, e));
                                  },
                                  child: Container(
                                    height: 60.h,
                                    width: 315.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: Colors.white,
                                    ),
                                    child: ListTile(
                                      title: Text(e.name),
                                      trailing: Icon(Icons.navigate_next),
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                )
              ]),
            ),
          )),
        );
      },
    );
  }
}
