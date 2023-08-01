import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/favorite/favorite_response.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../components/custom_snackbar.dart';
import '../../data/models/get_advertise/advertise_reponse.dart';
import '../../routes/app_pages.dart';
import '../constwidget/CardImageWıdget.dart';
import '../constwidget/blue_text_profile.dart';
import '../favoriteSubCategory/view.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  void onOkeyDialog(argument, context) async {
    await controller.deleteFavorite(argument!.id);
    Get.back();
    CustomSnackBar.showCustomSnackBar(
      title: "Başarılı",
      message: "",
    );
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => FavoritesubcategoryPage());

    return GetBuilder<FavoriteController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBarConst(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Text("Favori İlanlarım", style: textTheme.bodySmall),
              ),
              SizedBox(
                height: 20.h,
              ),
              Flexible(
                  child: CustomFutureBuilder<List<GetAdvertise>?>(
                future: controller.getFavorities(),
                onError: (msg) => Text(msg),
                onSuccess: (data) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: data?.length,
                    itemBuilder: ((context, index) {
                      var myAdv = data![index];
                      print(myAdv);
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.ADVERTISELAST,
                                  arguments: myAdv);
                            },
                            onLongPress: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                        height: 220.h,
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            BlueTextProfile(
                                              title:
                                                  " Favorilerinizden silmek istiyor musunuz?",
                                            ),
                                            SizedBox(
                                              height: 45.h,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                    onTap: () {
                                                      onOkeyDialog(
                                                          myAdv, context);
                                                    },
                                                    child: Container(
                                                      height: 60.h,
                                                      width: 140.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.r),
                                                          color:
                                                              Colors.redAccent),
                                                      child: Center(
                                                        child: Text(
                                                          "Evet, Sil",
                                                          style: TextStyle(
                                                            fontSize: 15.h,
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Gilroy",
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                                InkWell(
                                                    onTap: () {
                                                      Get.back();
                                                    },
                                                    child: Container(
                                                      height: 60.h,
                                                      width: 140.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.r),
                                                          color: Color(
                                                              0xff0075FF)),
                                                      child: Center(
                                                        child: Text(
                                                          "Hayır",
                                                          style: TextStyle(
                                                            fontSize: 15.h,
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Gilroy",
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                              ],
                                            )
                                          ],
                                        ),
                                      ));
                            },
                            child: Container(
                              height: 80.h,
                              width: 315.w,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/favorite/ozel-ders-listem.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  myAdv.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontFamily: "Gilroy",
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      );
                    }),
                  );
                },
                onDataEmpty: () {
                  return Center(child: Text("Kategori bulunamadı"));
                },
              )),
            ],
          )),
        );
      },
    );
  }
}

class CardImageWidget extends StatelessWidget {
  final String image;
  final String title;
  const CardImageWidget({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.ADVERTISELAST, arguments: "sa");
          },
          child: Container(
            height: 80.h,
            width: 315.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontFamily: "Gilroy",
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
