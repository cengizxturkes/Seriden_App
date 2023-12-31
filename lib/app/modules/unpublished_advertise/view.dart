import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../data/models/my_advertise/my_adv_passive_response.dart';
import '../constwidget/CardImageWıdget.dart';
import '../constwidget/header_text_profile.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class UnpublishedAdvertisePage extends GetView<UnpublishedAdvertiseController> {
  const UnpublishedAdvertisePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UnpublishedAdvertiseController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: ColorManager.base20,
          body: SafeArea(
              child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppBarConst(),
                SizedBox(
                  height: 20.h,
                ),
                HeaderTextProfile(
                  title: "Yayında Olmayan İlanlarım",
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: Divider(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Flexible(
                    child: CustomFutureBuilder<List<MyAdverisePassive>>(
                  future: controller.getMyAdvPassive(),
                  onError: (msg) => Text(msg),
                  onSuccess: (data) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: data.length,
                      itemBuilder: ((context, index) {
                        var myAdv = data[index];
                        print(myAdv);
                        return CardImageWidget(
                          title: myAdv.title,
                          image: "assets/images/favorite/ozel-ders-listem.png",
                        );
                      }),
                    );
                  },
                  onDataEmpty: () {
                    return Center(child: Text("Kategori bulunamadı"));
                  },
                )),
              ],
            ),
          )),
        );
      },
    );
  }
}
