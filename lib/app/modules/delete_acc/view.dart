import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constwidget/blue_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class DeleteAccPage extends GetView<DeleteAccController> {
  const DeleteAccPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeleteAccController>(
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
                        title: "Hesap İptali",
                      ),
                      Divider(),
                      SizedBox(
                        height: 15.h,
                      ),
                      BlackTextProfile(
                          title:
                              "Hesabınızı iptal etmek istemenize üzüldük..."),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w),
                        child: Column(
                          children: [
                            BlackTextProfile(
                                title:
                                    "·  Hesabınız yeniden aktif hale getirilemeyecektir."),
                            BlackTextProfile(
                                title:
                                    "·  Yayında olan ilanlarınızın tamamı yayından kalkacaktır."),
                            BlackTextProfile(
                                title:
                                    "·  Doping kullandığınız ilanınız varsa ücret iadesi yapılamayacaktır."),
                            BlackTextProfile(
                                title:
                                    "·  Kimlik Numaranızı ve Cebinden onaylı telefon numaranızı başka bir hesaba taşıyabilirsiniz."),
                            BlackTextProfile(
                                title:
                                    "·  E-posta adresinizin yeni bir hesapta 10 yıl boyunca kullanılamayacağını da üzülerek hatırlatmak isteriz."),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            height: 40.h,
                            width: 315.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: Color(0xffED2B2A)),
                            child: Center(
                              child: Text(
                                "HESABIMI İPTAL ETMEK İSTORUM",
                                style: TextStyle(
                                  fontSize: 15.h,
                                  color: Colors.white,
                                  fontFamily: "Gilroy",
                                ),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                            height: 40.h,
                            width: 315.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                "VAZGEÇ",
                                style: TextStyle(
                                  fontSize: 15.h,
                                  color: Color(0xff0075FF),
                                  fontFamily: "Gilroy",
                                ),
                              ),
                            )),
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
