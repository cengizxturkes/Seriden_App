import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../components/color_manager.dart';
import '../../data/models/category/category_sub_responce.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class AdvertiseListSubPageArgument {
  Category category;
  Subcategory subCategory;
  AdvertiseListSubPageArgument(this.category, this.subCategory);
}

class AdvertiseListSubPage extends GetView<AdvertiseListSubController> {
  const AdvertiseListSubPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    var argument = Get.arguments as AdvertiseListSubPageArgument;
    return GetBuilder<AdvertiseListSubController>(
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
                          Row(
                            children: [
                              Text(
                                argument.category.name,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff0075FF),
                                  fontFamily: "Gilroy",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "/" + argument.subCategory.name,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff0075FF),
                                  fontFamily: "Gilroy",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.ADVERTISELISTSUB,
                              arguments: "Asistan");
                        },
                        child: Container(
                          height: 74,
                          width: 315.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            title: Text("Asistan-Sekreter"),
                            trailing: Icon(Icons.navigate_next),
                            subtitle: Row(
                              children: [
                                Icon(Icons.location_city),
                                Text("İstanbul"),
                              ],
                            ),
                          ),
                        ),
                      ),
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
