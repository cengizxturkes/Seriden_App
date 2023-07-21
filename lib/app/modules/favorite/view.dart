import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../constwidget/CardImageWıdget.dart';
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
              CardImageWidget(
                image: 'assets/images/favorite/ozel-ders-listem.png',
                title: "Özel Ders İlanlarım1",
              )
            ],
          )),
        );
      },
    );
  }
}
