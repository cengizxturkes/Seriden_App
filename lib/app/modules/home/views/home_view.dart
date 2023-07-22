import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/color_manager.dart';
import 'package:getx_skeleton/app/help%20_and_guide_apps/index.dart';
import 'package:getx_skeleton/app/modules/about/index.dart';
import 'package:getx_skeleton/app/modules/account_info/controller.dart';
import 'package:getx_skeleton/app/modules/advertise/controller.dart';
import 'package:getx_skeleton/app/modules/advertise/index.dart';
import 'package:getx_skeleton/app/modules/advertise_first/index.dart';
import 'package:getx_skeleton/app/modules/favorite/index.dart';
import 'package:getx_skeleton/app/modules/home/nav.dart';
import 'package:getx_skeleton/app/modules/messages/index.dart';
import 'package:getx_skeleton/app/modules/new_phone_number/index.dart';
import 'package:getx_skeleton/app/modules/payment/index.dart';
import 'package:getx_skeleton/app/modules/permissions/index.dart';
import 'package:getx_skeleton/app/modules/personal_information/index.dart';
import 'package:getx_skeleton/app/modules/phone_number/controller.dart';
import 'package:getx_skeleton/app/modules/profile/index.dart';
import 'package:getx_skeleton/config/theme/my_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../components/custom_bottom_nav_bar.dart';
import '../../../components/my_widgets_animator.dart';
import '../../../services/advertise_service.dart';
import '../../Map/widgets/JobCategoryItem.dart';
import '../../account_info/view.dart';
import '../../advertise_second/controller.dart';
import '../../advetise_last/controller.dart';
import '../../change_number/controller.dart';
import '../../change_password/controller.dart';
import '../../delete_acc/controller.dart';
import '../../language_select/controller.dart';
import '../../permission_view/controller.dart';
import '../../problem_suggestion_notification/controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AdvertiseController());
    Get.lazyPut(() => MessagesController());
    Get.lazyPut(() => FavoriteController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => AccountInfoController());
    Get.lazyPut(() => PersonalInformationController());
    Get.lazyPut(() => PhoneNumberController());
    Get.lazyPut(() => ChangeNumberController());
    Get.lazyPut(() => NewPhoneNumberController());
    Get.lazyPut(() => ChangePasswordController());
    Get.lazyPut(() => DeleteAccController());
    Get.lazyPut(() => PermissionsController());
    Get.lazyPut(() => PermissionViewController());
    Get.lazyPut(() => HelpAndGuideAppsController());
    Get.lazyPut(() => ProblemSuggestionNotificationController());
    Get.lazyPut(() => LanguageSelectController());
    Get.lazyPut(() => AboutController());
    Get.lazyPut(() => AdvertiseFirstController());
    Get.lazyPut(() => AdvertiseSecondController());
    Get.lazyPut(() => PaymentController());
    Get.lazyPut(() => AdvetiseLastController());
    Get.lazyPut(() => NewAdvertiseModel());

    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavbar(),
      backgroundColor: ColorManager.base20,
      // child: BottomNavigationBar(
      //   currentIndex: controller.currentIndex.value,
      //   onTap: (int index) {
      //     controller.currentIndex.value = index;
      //     controller.update();
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: controller.currentIndex == 0
      //           ? Image.asset(
      //               "assets/images/tabbar/majesticons_home-line-aktif.png")
      //           : Image.asset(
      //               "assets/images/tabbar/majesticons_home-line.png"),
      //       label: 'Ana Sayfa',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.notifications,
      //       ),
      //       label: 'İlan Ver',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       label: 'Favorilerim',
      //     ),
      //   ],
      // ),

      body: Column(
        children: [
          AppBarConst(),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Container(
                      height: 100.h,
                      width: 345.w,
                      margin: EdgeInsets.only(top: 30.h),
                      decoration: BoxDecoration(
                        color: Color(0xff4B4F52),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Container(
                                  height: 44.h,
                                  width: 199.w,
                                  child: Wrap(children: [
                                    Text(
                                        "Şimdi ilan ver Scooter kazanma şansını yakala",
                                        style: textTheme.bodyLarge),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 10),
                                child: Text("*Detaylı bilgi için tıklayın",
                                    style: textTheme.bodyMedium),
                              ),
                            ],
                          ),
                          Container(
                            width: 104.w,
                            height: 99.h,
                            child: Image.asset(
                                "assets/images/scooter-cekilis.png"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 189.h / 189.h,
                        mainAxisSpacing: 15.w,
                        crossAxisSpacing: 0.h,
                      ),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        List<String> title = [
                          "İş İlanları",
                          "Emlak",
                          "Satılık - 2. El",
                          "Özel Ders",
                          "Hayvanlar Alemi",
                          "Otomobil Vasıta",
                          "Usta Çağır",
                          "Duyurular",
                          "Ortak Arayanlar",
                          "Arkadaşlık İlan"
                        ];
                        List<String> subtitle = [
                          "Asistan - Sekreter Bilgisayar - Yazılım Eczacı",
                          "Satılık/ Kiralık Daire Satılık/Kiralık İş Yeri Satılık/Kiralık Arsa",
                          "Antika Eşyalar",
                          "Bilgisayar Dersleri Direksiyon Dersi İngilizce Dersi",
                          "Hayvan Sahiplendirme Kayıp Hayvan İlanları Hayvancılık İlanları",
                          "İkinci El Otomobil Kamyon - Kamyonet Otobüs",
                          "Asansör Servisi Bilgisayar ve Elektronik  Servisleri - Elektrikçi",
                          "Etkinlikler Özel Mesajlar Kayıp - Aranıyor",
                          "Satılık Şirket Barter İlanları Satış Ortaklığı ",
                          "Bay Arkadaş Bayan Arkadaş"
                        ];
                        List<Color> color = [
                          Color(0xff304296),
                          Color(0xff0E2954),
                          Color(0xff393053),
                          Color(0xff4C0033),
                          Color(0xff5F6070),
                          Color(0xff2E4F4F),
                          Color(0xff2C5222),
                          Color(0xff52471E),
                          Color(0xff816BB4),
                          Color(0xff961414),
                        ];
                        List<Color> textcolor = [
                          Color(0xff343434),
                          Color(0xffFFFFFF),
                          Color(0xffFFFFFF),
                          Color(0xff343434),
                          Color(0xff343434),
                          Color(0xffFFFFFF),
                          Color(0xffFFFFFF),
                          Color(0xff343434),
                          Color(0xff343434),
                          Color(0xffFFFFFF),
                        ];
                        List<String> icon = [
                          "assets/images/category/is-ilanlari.png",
                          "assets/images/category/emlak.png",
                          "assets/images/category/satilik.png",
                          "assets/images/category/ozel-ders.png",
                          "assets/images/category/car.png",
                          "assets/images/category/car.png",
                          "assets/images/category/tools.png",
                          "assets/images/category/duyuru.png",
                          "assets/images/category/partner.png",
                          "assets/images/category/satilik.png"
                        ];
                        return JobCategoryItem(
                          icon: icon[index],
                          title: title[index],
                          subtitle: subtitle[index],
                          color: color[index],
                          textColor: Color(0xffFFFFFF),
                        );
                      },
                      scrollDirection: Axis.vertical,
                    )

                    // Column(
                    //   children: [
                    //     Container(
                    //       width: 165.w,
                    //       height: 189.h,
                    //       decoration: BoxDecoration(
                    //         color: Color(0xff84DFFF),
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //       child: Column(
                    //         children: [
                    //           SizedBox(
                    //             height: 15.h,
                    //           ),
                    //           Image.asset(
                    //             "assets/images/category/is-ilanlari.png",
                    //             height: 50.h,
                    //             width: 50.w,
                    //           ),
                    //           SizedBox(
                    //             height: 15.h,
                    //           ),
                    //           Text("İş İlanları",
                    //               style: TextStyle(
                    //                   fontSize: 18.sp,
                    //                   color: Color(0xff343434),
                    //                   fontFamily: "Gilroy",
                    //                   fontWeight: FontWeight.w500),
                    //               textAlign: TextAlign.center),
                    //           SizedBox(height: 15.h),
                    //           Text(
                    //             "Asistan - Sekreter Bilgisayar - Yazılım Eczacı",
                    //             style: TextStyle(
                    //                 fontSize: 18.sp,
                    //                 color: Color(0xff343434),
                    //                 fontFamily: "Gilroy",
                    //                 fontWeight: FontWeight.w500),
                    //             textAlign: TextAlign.center,
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarConst(),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                children: [
                  Container(
                    height: 100.h,
                    width: 345.w,
                    margin: EdgeInsets.only(top: 30.h),
                    decoration: BoxDecoration(
                      color: Color(0xff4B4F52),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Container(
                                height: 44.h,
                                width: 199.w,
                                child: Wrap(children: [
                                  Text(
                                      "Şimdi ilan ver Scooter kazanma şansını yakala",
                                      style: textTheme.bodyLarge),
                                ]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: Text("*Detaylı bilgi için tıklayın",
                                  style: textTheme.bodyMedium),
                            ),
                          ],
                        ),
                        Container(
                          width: 104.w,
                          height: 99.h,
                          child:
                              Image.asset("assets/images/scooter-cekilis.png"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 189.h / 189.h,
                      mainAxisSpacing: 15.w,
                      crossAxisSpacing: 0.h,
                    ),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      List<String> title = [
                        "İş İlanları",
                        "Emlak",
                        "Satılık - 2. El",
                        "Özel Ders",
                        "Hayvanlar Alemi",
                        "Otomobil Vasıta",
                        "Usta Çağır",
                        "Duyurular",
                        "Ortak Arayanlar",
                        "Arkadaşlık İlan"
                      ];
                      List<String> subtitle = [
                        "Asistan - Sekreter Bilgisayar - Yazılım Eczacı",
                        "Satılık/ Kiralık Daire Satılık/Kiralık İş Yeri Satılık/Kiralık Arsa",
                        "Antika Eşyalar",
                        "Bilgisayar Dersleri Direksiyon Dersi İngilizce Dersi",
                        "Hayvan Sahiplendirme Kayıp Hayvan İlanları Hayvancılık İlanları",
                        "İkinci El Otomobil Kamyon - Kamyonet Otobüs",
                        "Asansör Servisi Bilgisayar ve Elektronik  Servisleri - Elektrikçi",
                        "Etkinlikler Özel Mesajlar Kayıp - Aranıyor",
                        "Satılık Şirket Barter İlanları Satış Ortaklığı ",
                        "Bay Arkadaş Bayan Arkadaş"
                      ];
                      List<Color> color = [
                        Color(0xff84DFFF),
                        Color(0xff516BEB),
                        Color(0xffF86F03),
                        Color(0xffFFC900),
                        Color(0xffC3EDC0),
                        Color(0xff7A9D54),
                        Color(0xff6554AF),
                        Color(0xffB696FF),
                        Color(0xffFFABAB),
                        Color(0xffED2B2A),
                      ];
                      List<Color> colortext = [
                        Color(0xff343434),
                        Color(0xffFFFFFF),
                        Color(0xffFFFFFF),
                        Color(0xff343434),
                        Color(0xff343434),
                        Color(0xffFFFFFF),
                        Color(0xffFFFFFF),
                        Color(0xff343434),
                        Color(0xff343434),
                        Color(0xffFFFFFF),
                      ];
                      return JobCategoryItem(
                        icon: "assets/images/category/is-ilanlari.png",
                        title: title[index],
                        subtitle: subtitle[index],
                        color: color[index],
                        textColor: colortext[index],
                      );
                    },
                    scrollDirection: Axis.vertical,
                  )

                  // Column(
                  //   children: [
                  //     Container(
                  //       width: 165.w,
                  //       height: 189.h,
                  //       decoration: BoxDecoration(
                  //         color: Color(0xff84DFFF),
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //       child: Column(
                  //         children: [
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Image.asset(
                  //             "assets/images/category/is-ilanlari.png",
                  //             height: 50.h,
                  //             width: 50.w,
                  //           ),
                  //           SizedBox(
                  //             height: 15.h,
                  //           ),
                  //           Text("İş İlanları",
                  //               style: TextStyle(
                  //                   fontSize: 18.sp,
                  //                   color: Color(0xff343434),
                  //                   fontFamily: "Gilroy",
                  //                   fontWeight: FontWeight.w500),
                  //               textAlign: TextAlign.center),
                  //           SizedBox(height: 15.h),
                  //           Text(
                  //             "Asistan - Sekreter Bilgisayar - Yazılım Eczacı",
                  //             style: TextStyle(
                  //                 fontSize: 18.sp,
                  //                 color: Color(0xff343434),
                  //                 fontFamily: "Gilroy",
                  //                 fontWeight: FontWeight.w500),
                  //             textAlign: TextAlign.center,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppBarConst extends StatelessWidget {
  const AppBarConst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 2),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      height: 90.h,
      child: Center(
        child: Text("SERİDEN", style: GoogleFonts.galindo(fontSize: 40.h)),
      ),
    );
  }
}

class BottomNavbar extends StatelessWidget {
  CustomBottomNavBarController controller = Get.find();
  BottomNavbar({
    key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(30),
        topLeft: Radius.circular(30),
      ),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black54, blurRadius: 10)]),
        child: BottomAppBar(
          color: Colors.white,
          height: 79.h,
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 6.h,
            ),
            child: Obx(
              () => Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.setSelectedIndex(0);
                      Get.to(HomeView());
                    },
                    icon: Image.asset(
                      "assets/images/tabbar/majesticons_home-line.png",
                      color:
                          controller.isSelected(0) ? Colors.blue : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.setSelectedIndex(1);
                      Get.to(AdvertisePage());
                    },
                    icon: Image.asset(
                        "assets/images/tabbar/icons8_advertising.png",
                        color: controller.isSelected(1)
                            ? Colors.blue
                            : Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.setSelectedIndex(2);
                      Get.to(FavoritePage());
                    },
                    icon: Image.asset(
                        "assets/images/tabbar/material-symbols_favorite-outline.png",
                        color: controller.isSelected(2)
                            ? Colors.blue
                            : Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.setSelectedIndex(3);
                      Get.to(MessagesPage());
                    },
                    icon: Image.asset("assets/images/tabbar/ci_chat.png",
                        color: controller.isSelected(3)
                            ? Colors.blue
                            : Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.setSelectedIndex(4);
                      Get.to(ProfilePage());
                    },
                    icon: Image.asset(
                        "assets/images/tabbar/iconamoon_profile-fill.png",
                        color: controller.isSelected(4)
                            ? Colors.blue
                            : Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
