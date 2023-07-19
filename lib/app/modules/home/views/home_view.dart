import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/advertise/controller.dart';
import 'package:getx_skeleton/app/modules/advertise/index.dart';
import 'package:getx_skeleton/app/modules/favorite/index.dart';
import 'package:getx_skeleton/app/modules/home/nav.dart';
import 'package:getx_skeleton/config/theme/my_fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../components/my_widgets_animator.dart';
import '../../Map/widgets/JobCategoryItem.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AdvertiseController());
    Get.lazyPut(() => FavoriteController());
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavbar(),
      backgroundColor: Color(0xffBEBEBE),
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
                        return JobCategoryItem(
                          icon: "assets/images/category/is-ilanlari.png",
                          title: title[index],
                          subtitle: subtitle[index],
                          color: color[index],
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
                      return JobCategoryItem(
                        icon: "assets/images/category/is-ilanlari.png",
                        title: title[index],
                        subtitle: subtitle[index],
                        color: color[index],
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
  const BottomNavbar({
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
            boxShadow: [
              BoxShadow(color: Colors.black54, blurRadius: 10)
              ]),
        child: BottomAppBar(
          color: Colors.white,
          height: 79.h,
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 6.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(HomeView());
                  },
                  icon: Image.asset(
                      "assets/images/tabbar/majesticons_home-line-aktif.png"),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(AdvertisePage());
                  },
                  icon: Image.asset(
                      "assets/images/tabbar/icons8_advertising.png"),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(FavoritePage());
                  },
                  icon: Image.asset(
                      "assets/images/tabbar/material-symbols_favorite-outline.png"),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(AdvertisePage());
                  },
                  icon: Image.asset("assets/images/tabbar/ci_chat.png"),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(AdvertisePage());
                  },
                  icon: Image.asset(
                      "assets/images/tabbar/iconamoon_profile-fill.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
