import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/constwidget/blue_text_profile.dart';
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
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      BlueTextProfile(title: "Yazılım Uzmanı İlan Bilgileri"),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                          "KOZMETİK FİRMAMIZA YAZILIM GELİŞTİRME UZMANI VE AYNI ZAMANDA SOSYAL MEDYA İLE İLGİLENECEK *** INSTAGRAM GOOGLE REKLAM KAMPANYALARINI YÜRÜTECEK VE AYNI ZAMANDA REKLAM BANNERLARI VİDEOLARI HAZIRLAYACAK MEVCUTTA KODLAMA DİLİNDE PHP BİLEN TERCİHİMİZ OLACAKTIR MAAŞ DOLGUN SİGORTA YEMEK HEPSİ DAHİL CUMARTESİ ÖĞLEN 2 YE KADAR ÇALIŞIYORUZ İLGİLİ ARKADAŞLAR BANA CV LERİNİ İLETEBİLİRLER "),
                      SizedBox(
                        height: 10.h,
                      ),
                      Divider(),
                      Row(
                        children: [
                          Text(
                            "İl/İlçe",
                            style: TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 15.sp),
                          ),
                          Spacer(),
                          BlueTextProfile(title: "Ankara Keçiören"),
                        ],
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 60.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xff0075FF)),
                                child: Center(
                                  child: Text(
                                    "ARA",
                                    style: TextStyle(
                                      fontSize: 15.h,
                                      color: Colors.white,
                                      fontFamily: "Gilroy",
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(
                            width: 35.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 60.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Color(0xff0075FF)),
                                child: Center(
                                  child: Text(
                                    "MESAJ GÖNDER",
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
