import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../data/models/category/category_sub_responce.dart';
import '../../data/models/get_advertise/advertise_reponse.dart';
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
    var argument = Get.arguments as Subcategory;
    return GetBuilder<AdvertiseListSubController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppBarConst(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      // Row(
                      //   children: [
                      //     Padding(
                      //       padding: EdgeInsets.only(left: 30.w),
                      //       child: Text(
                      //         argument.category.name,
                      //         style: TextStyle(
                      //           fontSize: 15,
                      //           color: Color(0xff0075FF),
                      //           fontFamily: "Gilroy",
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      //       ),
                      //     ),
                      //     Text(
                      //       "/" + argument.subCategory.name,
                      //       style: TextStyle(
                      //         fontSize: 15,
                      //         color: Color(0xff0075FF),
                      //         fontFamily: "Gilroy",
                      //         fontWeight: FontWeight.w500,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  CustomFutureBuilder<List<GetAdvertise>>(
                    future: controller.getAdvetiseBySub(argument.id),
                    onError: (msg) => Text(msg),
                    onSuccess: (data) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: ((context, index) {
                          var myAdv = data[index];
                          print(myAdv);
                          return Padding(
                            padding: EdgeInsets.only(left: 30.w, right: 30.w),
                            child: Column(
                              children: [
                                Container(
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: Colors.white,
                                    ),
                                    child: GestureDetector(
                                        onTap: () async {
                                          var id = myAdv.id;
                                          await Get.toNamed(
                                              Routes.ADVERTISELAST,
                                              arguments: myAdv);
                                        },
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 15.h),
                                          child: ListTile(
                                            title: BlackTextProfileBold(
                                              title: myAdv.title,
                                            ),
                                            // subtitle: BlackTextProfileEmail(
                                            //   title: myAdv.,
                                            // ),
                                            trailing: Icon(Icons.navigate_next),
                                          ),
                                        ))),
                                SizedBox(
                                  height: 10.h,
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                    onDataEmpty: () {
                      return Center(child: Text("Kategori bulunamadı"));
                    },
                  ),
                ]),
          )),
        );
      },
    );
  }
}
